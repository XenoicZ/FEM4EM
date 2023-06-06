import numpy as np
import scipy
import scipy.io
import re
from scipy.sparse import random
from scipy import linalg


def trans_ill_cond(matrix, factor, axis=0):
    if axis == 0:
        matrix[:,0] = matrix[:,0]*factor
        matrix[:,1] = matrix[:,1]/factor
    else:
        matrix[0,:] = matrix[0,:]*factor
        matrix[1,:] = matrix[1,:]/factor
    return matrix

def mk_sparse(name, shape, nonzero_percent=0.001, ill_cond=None, ill_cond_axis=0):
    num_elements = shape[0] * shape[1]
    num_nonzero = int(nonzero_percent * num_elements)
    values = np.random.rand(num_nonzero)  # Random values for nonzero elements
    sparse_matrix = random(shape[0], shape[1], density=nonzero_percent,
                           format='csc', data_rvs=lambda size: values, random_state=None)
    if ill_cond is not None:
        sparse_matrix = trans_ill_cond(sparse_matrix, factor=ill_cond, axis=ill_cond_axis)
        
    scipy.io.savemat(name, {'M':sparse_matrix})
    print('Sparse matrix with shape {} has been saved to {}'.format(shape,name))

def mk_sparse_quick(file, shape, nonzero_percent=0.001, ill_cond=None):
    m = max(shape)
    n = min(shape)
    mk_sparse(file+'/M1.mat', (m,m), nonzero_percent=nonzero_percent, ill_cond=ill_cond)
    mk_sparse(file+'/M2.mat', (m,m), nonzero_percent=nonzero_percent, ill_cond=ill_cond)
    mk_sparse(file+'/R1.mat', (m,n), nonzero_percent=nonzero_percent, ill_cond=ill_cond)
    mk_sparse(file+'/V1.mat', (m,1), nonzero_percent=nonzero_percent, ill_cond=None)
    mk_sparse(file+'/V2.mat', (m,1), nonzero_percent=nonzero_percent, ill_cond=None)
    
def track_marks(test_file, mark_h, mark_t):
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

def track_output(text, head, tail):
    output = re.findall(head+'.*'+tail, text)
    if len(output) == 1:
        output = output[0]
        output = output.replace(head, '')
        output = output.replace(tail, '')
    else:
        output = 'Error'
    return output

def mk_head(script_path, matrix_path):
    with open(script_path, 'w') as f:
        for matrix in ['M1','M2','R','V1','V2']:
            f.write('{}=load(\"{}{}.mat\").M;\n'.format(matrix, matrix_path, matrix))
        f.write('s=rand(1);\n')