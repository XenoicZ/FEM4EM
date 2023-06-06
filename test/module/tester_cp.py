import pandas as pd
import numpy as np
from subprocess import Popen, PIPE
from tqdm import tqdm
from utils import *
import re

# Users input
work_dir = input('Work directory: ')
test_files = input('Test scripts to run: ').split(', ')
software_path = input('Path to the software: ')
save_file = input('Name of output file: ')

# Use different detection for mat and bt
save_path = work_dir + save_file


if 'matlab' in software_path.lower():
    from const_mat import *
elif 'baltam' in software_path.lower():
    from const_bt import *
else:
    print('Warning, software type not detected.')
    
cmd_line = software_path + cmd_option + block_cmd
results = pd.DataFrame()


for test_file in tqdm(test_files, position=0, leave=True):

    marks = track_marks(test_file, mark_h, mark_t)
    
    # Read input file, split in block.m
    with open(work_dir+test_file+'.m') as f:
        text = f.read()
    blocks = text.split('\n\n')
    head_block = mk_head1('../matrix/A.mat') ####

    times = []
    accuracies = []
    
    for block in tqdm(blocks, position=1, leave=False):
        with open(block_file, 'w') as f:
            f.write(head_block+'\n\n')
            f.write(block+'\n')
            f.write('exit')

        # Execute MATLAB block.m as subprocess
        matlab = Popen(cmd_line, shell=True, stdout=PIPE, stderr=PIPE)
        text = matlab.stdout.read().decode('utf-8')
        matlab.terminate()

        # Track MATLAB output
        time = track_output(text, time_h, time_t)
        accuracy = track_output(text, accuracy_h, accuracy_t)
        times.append(time)
        accuracies.append(accuracy)

    times = np.reshape(times, (-1,1))
    accuracies = np.reshape(accuracies, (-1,1))
    result = np.concatenate([marks, times, accuracies], axis=1)
    result = pd.DataFrame(result, columns=['函数','接口','时间(s)','精度'])
    results = pd.concat([results, result])
results.to_csv(save_path)
results