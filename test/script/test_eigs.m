format long e
sB = load('../matrix/B.mat').B;
B = full(sB);

% dense, M, E=eigs(A)
tic; E = eigs(B); toc

% sparse, M, E=eigs(A)
tic; E = eigs(sB); toc

% dense, M, [V,D]=eigs(A)
tic; [V,D] = eigs(B); toc
norm(full(B*V-V*D))

% sparse, M, [V,D]=eigs(A)
tic; [V,D] = eigs(sB); toc
norm(full(sB*V-V*D))

% (dense,dense), (M,M), E=eigs(A,B)
tic; E = eigs(B,B); toc

% (dense,sparse), (M,M), E=eigs(A,B)
tic; E = eigs(B,sB); toc

% (sparse,dense), (M,M), E=eigs(A,B)
tic; E = eigs(sB,B); toc

% (sparse,sparse), (M,M), E=eigs(A,B)
tic; E = eigs(sB,sB); toc

% (dense,dense), (M,M), [V,D]=eigs(A,B)
tic; [V,D] = eigs(B,B); toc
norm(full(B*V-B*V*D))

% (dense,sparse), (M,M), [V,D]=eigs(A,B)
tic; [V,D] = eigs(B,sB); toc
norm(full(B*V-sB*V*D))

% (sparse,dense), (M,M), [V,D]=eigs(A,B)
tic; [V,D] = eigs(sB,B); toc
norm(full(sB*V-B*V*D))

% (sparse,sparse), (M,M), [V,D]=eigs(A,B)
tic; [V,D] = eigs(sB,sB); toc
norm(full(sB*V-sB*V*D))