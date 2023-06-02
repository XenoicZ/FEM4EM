format long e
n = 341;
m = 200;
B = rand(n);
Col = rand(n,m);
Row = rand(n,m);
sB = sparse(B);
sCol = sparse(Col);
sRow = sparse(Row);

% dense, M, QR
tic; [Q,R] = qr(B); toc
norm(full(sB-Q*R))

% dense, M, QRP
tic; [Q,R,P] = qr(B); toc
norm(full(sB*P-Q*R))

% sparse, M, QR
tic; [Q,R] = qr(sB); toc
norm(full(sB-Q*R))

% sparse, M, QRP
tic; [Q,R,P] = qr(sB); toc
norm(full(sB*P-Q*R))