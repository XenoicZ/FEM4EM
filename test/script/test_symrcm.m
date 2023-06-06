format long e
sB = load('../matrix/B.mat').B;
B = full(sB);

% dense, M, P=symrcm(S)
tic; P=symrcm(B); toc

% sparse, M, P=symrcm(S)
tic; P=symrcm(sB); toc