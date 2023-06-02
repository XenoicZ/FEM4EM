format long e
n = 341;
s = rand(1);
B = rand(n);
Col = rand(n,1);
Row = rand(1,n);
sB = sparse(B);
sCol = sparse(Col);
sRow = sparse(Row);

% dense, M, LU
tic; [L,U] = lu(B); toc
norm(full(B-L*U))

% dense, M, LUP:matrix
tic; [L,U,P] = lu(B,'matrix'); toc
norm(full(P*B-L*U))

% dense, M, LUP:vector
tic; [L,U,P] = lu(B,'vector'); toc
norm(full(B(P,:)-L*U))

% dense, M, LUPQ:matrix
tic; [L,U,P,Q] = lu(B,'matrix'); toc
norm(full(P*B*Q-L*U))

% dense, M, LUPQ:vector
tic; [L,U,P,Q] = lu(B,'vector'); toc
norm(full(B(P,Q)-L*U))

% dense, M, LUPQD:matrix
tic; [L,U,P,Q,D] = lu(B,'matrix'); toc
norm(full(P*(D\B)*Q-L*U))

% dense, M, LUPQD:vector
tic; [L,U,P,Q,D] = lu(B,'vector'); toc
norm(full(D(:,P)\B(:,Q)-L*U))