% NA, NA, mxn>nzmax
tic; A=spalloc(100,100,100*100-1); toc

% NA, NA, mxn=nzmax
tic; A=spalloc(100,100,100*100); toc

% NA, NA, mxn<nzmax
tic; A=spalloc(100,100,100*100+1); toc