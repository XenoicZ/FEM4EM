format long e
sB = load('../matrix/B.mat').B;
B = full(sB);

% dense, M, P=symamd(S)
tic; P=symamd(B); toc

% sparse, M, P=symamd(S)
tic; P=symamd(sB); toc

% dense, M, [P,stats]=symamd(S,[10,0])
tic; [P,stats]=symamd(B,[10,0]); toc

% sparse, M, [P,stats]=symamd(S,[10,0])
tic; [P,stats]=symamd(sB,[10,0]); toc

% dense, M, [P,stats]=symamd(S,[10,1])
tic; [P,stats]=symamd(B,[10,1]); toc

% sparse, M, [P,stats]=symamd(S,[10,1])
tic; [P,stats]=symamd(sB,[10,1]); toc