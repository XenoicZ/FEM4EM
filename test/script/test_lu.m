format long e
sB = load('../matrix/B.mat').B;
B = full(sB);

% dense, M, X=lu(A)
tic; X = lu(B); toc

% dense, M, [L,U]=lu(A)
tic; [L,U] = lu(B); toc
norm(full(B-L*U))

% dense, M, [L,U,P]=lu(A)
tic; [L,U,P] = lu(B); toc
norm(full(P*B-L*U))

% dense, M, [L,U,P]=lu(A,'vector')
tic; [L,U,P] = lu(B,'vector'); toc
norm(full(B(P,:)-L*U))

% dense, M, [L,U,P,Q]=lu(A)
tic; [L,U,P,Q] = lu(B,'matrix'); toc
norm(full(P*B*Q-L*U))

% dense, M, [L,U,P,Q]=lu(A,'vector')
tic; [L,U,P,Q] = lu(B,'vector'); toc
norm(full(B(P,Q)-L*U))

% sparse, M, X=lu(A)
tic; X = lu(sB); toc

% sparse, M, [L,U]=lu(A)
tic; [L,U] = lu(sB); toc
norm(full(sB-L*U))

% sparse, M, [L,U,P]=lu(A)
tic; [L,U,P] = lu(sB); toc
norm(full(P*sB-L*U))

% sparse, M, [L,U,P]=lu(A,'vector')
tic; [L,U,P] = lu(sB,'vector'); toc
norm(full(sB(P,:)-L*U))

% sparse, M, [L,U,P,Q]=lu(A)
tic; [L,U,P,Q] = lu(sB,'matrix'); toc
norm(full(P*sB*Q-L*U))

% sparse, M, [L,U,P,Q]=lu(A,'vector')
tic; [L,U,P,Q] = lu(sB,'vector'); toc
norm(full(sB(P,Q)-L*U))