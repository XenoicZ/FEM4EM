import pandas as pd
import numpy as np
from subprocess import Popen, PIPE
from tqdm import tqdm
import re

# Users input
work_dir = input('Work directory: ')
test_files = input('Test scripts to run: ').split(', ')
software_path = input('Path to the software: ')
save_file = input('Name of output file: ')

######
save_path = work_dir + save_file
mark_h = '% '
mark_t = '\n'
time_h = 'Elapsed time is '
time_t = ' seconds.'
accuracy_h = 'ans =\n\n   '
accuracy_t = '\n\n'
error_flag = 'Error'
block_file = 'block'
block_cmd = "\"try,run(\'block\');end, quit\""
error_message = 'Warning. Outputs report one or more errors.'
cmd_option = ' -nodisplay -nosplash -nodesktop -r '
cmd_line = software_path + cmd_option + block_cmd
results = pd.DataFrame()

def track_output(text, head, tail):
    output = re.findall(head+'.*'+tail, text)
    if len(output) == 1:
        output = output[0]
        output = output.replace(head, '')
        output = output.replace(tail, '')
    else:
        output = 'Error'
    return output

def track_marks(software_path, test_file):
    fun_name = test_file.replace('test_', '')
    
    with open(test_file+'.m') as f:
        text = f.read()
    
    marks = re.findall(mark_h+'.*'+mark_t, text)
    marks_ = []
    for mark in marks:
        mark = mark.replace(mark_h, '') # truncate line head
        mark = mark.replace(mark_t, '') # truncate line tail
        mark = mark.split(', ')
        mark.insert(0, fun_name)
        if len(mark)<4:               # for function without 接口
            mark.append('NA')
        marks_.append(mark)
    marks = np.array(marks_)
    return marks

for test_file in tqdm(test_files, position=0, leave=True):

    marks = track_marks(software_path, test_file)
    
    # Read input file, split in block.m
    with open(work_dir+test_file+'.m') as f:
        text = f.read()
    blocks = text.split('\n\n')
    head_block = blocks[0]

    times = []
    accuracies = []
    for block in tqdm(blocks[1:], position=1, leave=False):
        with open(block_file+'.m', 'w') as f:
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
    result = pd.DataFrame(result, columns=['函数','稀疏性','运算','接口','时间(s)','精度'])
    results = pd.concat([results, result])
results.to_csv(save_path)
results