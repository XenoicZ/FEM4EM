format long e
sB = load('../matrix/B.mat').B;
B = full(sB);

% sparse, M, P=dmperm(S)
tic; [p,q,r,s,cc,rr]=dmperm(sB); toc
exit