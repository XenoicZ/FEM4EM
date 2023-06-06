format long e
sB = load('../matrix/B.mat').B;
B = full(sB);

% dense, M, P=amd(S)
tic; P=amd(B); toc

% sparse, M, P=amd(S)
tic; P=amd(sB); toc