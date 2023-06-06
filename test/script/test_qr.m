format long e
sB = load('../matrix/B.mat').B;
B = full(sB);
sBCol = sB(:,1:170);
BCol = full(sBCol);
sBRow = sB(1:170,:);
BRow = full(sBRow);
sCol = sB(:,1);
Col = full(sCol);
sRow = sB(1,:);
Row = full(sRow);

% dense, M, X=qr(A)
tic; X = qr(B); toc
[Q,R]=qr(B); norm(full(R-triu(X)))

% dense, M, [Q,R]=qr(A)
tic; [Q,R] = qr(B); toc
norm(full(B-Q*R))

% dense, M, [Q,R,P]=qr(A)
tic; [Q,R,P] = qr(B); toc
norm(full(B*P-Q*R))

% dense, M, X=qr(A,0)
tic; X = qr(B,0); toc
[Q,R]=qr(B); norm(R-full(triu(X)))

% dense, M, [Q,R]=qr(A,0)
tic; [Q,R] = qr(B,0); toc
norm(full(B-Q*R))

% dense, M, [Q,R,P]=qr(A,0)
tic; [Q,R,P] = qr(B,0); toc
norm(full(B(:,P)-Q*R))

% dense, M, [Q,R,P]=qr(A,'matrix')
tic; [Q,R,P] = qr(B,'matrix'); toc
norm(full(B*P-Q*R))

% dense, M, [Q,R,P]=qr(A,'vector')
tic; [Q,R,P] = qr(B,'vector'); toc
norm(full(B(:,P)-Q*R))

% sparse, M, X=qr(A)
tic; X = qr(sB); toc
[Q,R]=qr(sB); norm(full(R-triu(X)))

% sparse, M, [Q,R]=qr(A)
tic; [Q,R] = qr(sB); toc
norm(full(sB-Q*R))

% sparse, M, [Q,R,P]=qr(A)
tic; [Q,R,P] = qr(sB); toc
norm(full(sB*P-Q*R))

% sparse, M, X=qr(A,0)
tic; X = qr(sB,0); toc
[Q,R]=qr(sB); norm(R-full(triu(X)))

% sparse, M, [Q,R]=qr(A,0)
tic; [Q,R] = qr(sB,0); toc
norm(full(sB-Q*R))

% sparse, M, [Q,R,P]=qr(A,0)
tic; [Q,R,P] = qr(sB,0); toc
norm(full(sB(:,P)-Q*R))

% sparse, M, [Q,R,P]=qr(A,'matrix')
tic; [Q,R,P] = qr(sB,'matrix'); toc
norm(full(sB*P-Q*R))

% sparse, M, [Q,R,P]=qr(A,'vector')
tic; [Q,R,P] = qr(sB,'vector'); toc
norm(full(sB(:,P)-Q*R))

% dense, MCol, X=qr(A)
tic; X = qr(BCol); toc
[Q,R]=qr(BCol); norm(full(R-triu(X)))

% dense, MCol, [Q,R]=qr(A)
tic; [Q,R] = qr(BCol); toc
norm(full(BCol-Q*R))

% dense, MCol, [Q,R,P]=qr(A)
tic; [Q,R,P] = qr(BCol); toc
norm(full(BCol*P-Q*R))

% dense, MCol, X=qr(A,0)
tic; X = qr(BCol,0); toc
[Q,R]=qr(BCol); norm(R-full(triu(X)))

% dense, MCol, [Q,R]=qr(A,0)
tic; [Q,R] = qr(BCol,0); toc
norm(full(BCol-Q*R))

% dense, MCol, [Q,R,P]=qr(A,0)
tic; [Q,R,P] = qr(BCol,0); toc
norm(full(BCol(:,P)-Q*R))

% dense, MCol, [Q,R,P]=qr(A,'matrix')
tic; [Q,R,P] = qr(BCol,'matrix'); toc
norm(full(BCol*P-Q*R))

% dense, MCol, [Q,R,P]=qr(A,'vector')
tic; [Q,R,P] = qr(BCol,'vector'); toc
norm(full(BCol(:,P)-Q*R))

% sparse, MCol, X=qr(A)
tic; X = qr(sBCol); toc
[Q,R]=qr(sBCol); norm(full(R-triu(X)))

% sparse, MCol, [Q,R]=qr(A)
tic; [Q,R] = qr(sBCol); toc
norm(full(sBCol-Q*R))

% sparse, MCol, [Q,R,P]=qr(A)
tic; [Q,R,P] = qr(sBCol); toc
norm(full(sBCol*P-Q*R))

% sparse, MCol, X=qr(A,0)
tic; X = qr(sBCol,0); toc
[Q,R]=qr(sBCol); norm(R-full(triu(X)))

% sparse, MCol, [Q,R]=qr(A,0)
tic; [Q,R] = qr(sBCol,0); toc
norm(full(sBCol-Q*R))

% sparse, MCol, [Q,R,P]=qr(A,0)
tic; [Q,R,P] = qr(sBCol,0); toc
norm(full(sBCol(:,P)-Q*R))

% sparse, MCol, [Q,R,P]=qr(A,'matrix')
tic; [Q,R,P] = qr(sBCol,'matrix'); toc
norm(full(sBCol*P-Q*R))

% sparse, MCol, [Q,R,P]=qr(A,'vector')
tic; [Q,R,P] = qr(sBCol,'vector'); toc
norm(full(sB(:,P)-Q*R))