import numpy as np
import scipy
import scipy.io
from scipy.sparse import random

def mk_sparse(name, shape, nonzero_percent=0.001, ill_cond=None):
    num_elements = shape[0] * shape[1]
    num_nonzero = int(nonzero_percent * num_elements)
    values = np.random.rand(num_nonzero)  # Random values for nonzero elements
    sparse_matrix = random(shape[0], shape[1], density=nonzero_percent,
                           format='coo', data_rvs=lambda size: values, random_state=None)
    scipy.io.savemat(name, {'M':sparse_matrix})
    print('Sparse matrix with shape {} has been saved to {}'.format(shape,name))

def mk_sparse_quick(file, shape, nonzero_percent=0.001, ill_cond=None):
    m = max(shape)
    n = min(shape)
    mk_sparse(file+'/M1.mat', (m,m), nonzero_percent=nonzero_percent, ill_cond=ill_cond)
    mk_sparse(file+'/M2.mat', (m,m), nonzero_percent=nonzero_percent, ill_cond=ill_cond)
    mk_sparse(file+'/R1.mat', (m,n), nonzero_percent=nonzero_percent, ill_cond=ill_cond)
    mk_sparse(file+'/R2.mat', (m,n), nonzero_percent=nonzero_percent, ill_cond=ill_cond)
    mk_sparse(file+'/V1.mat', (m,1), nonzero_percent=nonzero_percent, ill_cond=ill_cond)
    mk_sparse(file+'/V2.mat', (m,1), nonzero_percent=nonzero_percent, ill_cond=ill_cond)