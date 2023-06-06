format long e
sB = load('../matrix/B.mat').B;
B = full(sB);

% dense, M, E=eig(A)
tic; E = eig(B); toc

% sparse, M, E=eig(A)
tic; E = eig(sB); toc

% dense, M, [V,D]=eig(A)
tic; [V,D] = eig(B); toc
norm(full(B*V-V*D))

% sparse, M, [V,D]=eig(A)
tic; [V,D] = eig(sB); toc
norm(full(sB*V-V*D))

% dense, M, [V,D,W]=eig(A)
tic; [V,D,W] = eig(B); toc
norm(full(W'*B-D*W'))

% sparse, M, [V,D,W]=eig(A)
tic; [V,D,W] = eig(sB); toc
norm(full(W'*sB-D*W'))

% (dense,dense), (M,M), E=eig(A,B)
tic; E = eig(B,B); toc

% (dense,sparse), (M,M), E=eig(A,B)
tic; E = eig(B,sB); toc

% (sparse,dense), (M,M), E=eig(A,B)
tic; E = eig(sB,B); toc

% (sparse,sparse), (M,M), E=eig(A,B)
tic; E = eig(sB,sB); toc

% (dense,dense), (M,M), [V,D]=eig(A,B)
tic; [V,D] = eig(B,B); toc
norm(full(B*V-B*V*D))

% (dense,sparse), (M,M), [V,D]=eig(A,B)
tic; [V,D] = eig(B,sB); toc
norm(full(B*V-sB*V*D))

% (sparse,dense), (M,M), [V,D]=eig(A,B)
tic; [V,D] = eig(sB,B); toc
norm(full(sB*V-B*V*D))

% (sparse,sparse), (M,M), [V,D]=eig(A,B)
tic; [V,D] = eig(sB,sB); toc
norm(full(sB*V-sB*V*D))

% (dense,dense), (M,M), [V,D,W]=eig(A,B)
tic; [V,D,W] = eig(B,B); toc
norm(full(W'*B-D*W'*B))

% (dense,sparse), (M,M), [V,D,W]=eig(A,B)
tic; [V,D,W] = eig(B,sB); toc
norm(full(W'*B-D*W'*sB))

% (sparse,dense), (M,M), [V,D,W]=eig(A,B)
tic; [V,D,W] = eig(sB,B); toc
norm(full(W'*sB-D*W'*B))

% (sparse,sparse), (M,M), [V,D,W]=eig(A,B)
tic; [V,D,W] = eig(sB,sB); toc
norm(full(W'*sB-D*W'*sB))