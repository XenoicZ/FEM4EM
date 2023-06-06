format long e
sB = load('../matrix/B.mat').B;
B = full(sB);

% dense, M, P=dmperm(S)
tic; P=dmperm(B); toc

% sparse, M, P=dmperm(S)
tic; P=dmperm(sB); toc

% dense, M, [p,q,r,s,cc,rr]=dmperm(S)
tic; [p,q,r,s,cc,rr]=dmperm(B); toc

% sparse, M, P=dmperm(S)
tic; [p,q,r,s,cc,rr]=dmperm(sB); toc