format long e
sB = load('../matrix/B.mat').B;
B = full(sB);

% dense, M, L=ldl(A)
tic; L = ldl(B); toc

% dense, M, [L,D]=ldl(A)
tic; [L,D] = ldl(B); toc
norm(full(B-L*D*L'))

% dense, M, [L,D,P]=ldl(A)
tic; [L,D,P] = ldl(B); toc
norm(full(P'*B*P-L*D*L'))

% dense, M, [L,D,P]=ldl(A,'vector')
tic; [L,D,P] = ldl(B,'vector'); toc
norm(full(B(P,P)-L*D*L'))

% sparse, M, L=ldl(A)
tic; L = ldl(sB); toc

% sparse, M, [L,D]=ldl(A)
tic; [L,D] = ldl(sB); toc
norm(full(sB-L*D*L'))

% sparse, M, [L,D,P]=ldl(A)
tic; [L,D,P] = ldl(sB); toc
norm(full(P'*sB*P-L*D*L'))

% sparse, M, [L,D,P]=ldl(A,'vector')
tic; [L,D,P] = ldl(sB,'vector'); toc
norm(full(sB(P,P)-L*D*L'))