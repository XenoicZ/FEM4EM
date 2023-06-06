format long e
sB = load('../matrix/B.mat').B;
B = full(sB);

% dense, M, P=colamd(S)
tic; P=colamd(B); toc

% sparse, M, P=colamd(S)
tic; P=colamd(sB); toc

% dense, M, [P,stats]=colamd(S,[10,10,0])
tic; [P,stats]=colamd(B,[10,10,0]); toc

% sparse, M, [P,stats]=colamd(S,[10,10,0])
tic; [P,stats]=colamd(sB,[10,10,0]); toc

% dense, M, [P,stats]=colamd(S,[10,10,1])
tic; [P,stats]=colamd(B,[10,10,0]); toc

% sparse, M, [P,stats]=colamd(S,[10,10,1])
tic; [P,stats]=colamd(sB,[10,10,0]); toc

% dense, M, [P,stats]=colamd(S,[-10,-10,0])
tic; [P,stats]=colamd(B,[-10,-10,0]); toc

% sparse, M, [P,stats]=colamd(S,[-10,-10,0])
tic; [P,stats]=colamd(sB,[-10,-10,0]); toc

% dense, M, [P,stats]=colamd(S,[-10,-10,1])
tic; [P,stats]=colamd(B,[-10,-10,0]); toc

% sparse, M, [P,stats]=colamd(S,[-10,-10,1])
tic; [P,stats]=colamd(sB,[-10,-10,0]); toc