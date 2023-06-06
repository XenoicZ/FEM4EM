format long e
sB = load('../matrix/B.mat').B;
B = full(sB);

% dense, M, count=symbfact(A)
tic; count=symbfact(B); toc

% sparse, M, count=symbfact(A)
tic; count=symbfact(sB); toc

% dense, M, count=symbfact(A,'sym')
tic; count=symbfact(B,'sym'); toc

% sparse, M, count=symbfact(A,'sym')
tic; count=symbfact(sB,'sym'); toc

% dense, M, count=symbfact(A,'col')
tic; count=symbfact(B,'col'); toc

% sparse, M, count=symbfact(A,'col')
tic; count=symbfact(sB,'col'); toc

% dense, M, count=symbfact(A,'row')
tic; count=symbfact(B,'row'); toc

% sparse, M, count=symbfact(A,'row')
tic; count=symbfact(sB,'row'); toc

% dense, M, count=symbfact(A,'lo')
tic; count=symbfact(B,'lo'); toc

% sparse, M, count=symbfact(A,'lo')
tic; count=symbfact(sB,'lo'); toc

% dense, M, [counts,parent,post]=symbfact(A)
tic; [counts,parent,post]=symbfact(B); toc

% sparse, M, [counts,parent,post]=symbfact(A)
tic; [counts,parent,post]=symbfact(sB); toc

% dense, M, [counts,parent,post]=symbfact(A,'sym')
tic; [counts,parent,post]=symbfact(B,'sym'); toc

% sparse, M, [counts,parent,post]=symbfact(A,'sym')
tic; [counts,parent,post]=symbfact(sB,'sym'); toc

% dense, M, [counts,parent,post]=symbfact(A,'col')
tic; [counts,parent,post]=symbfact(B,'col'); toc

% sparse, M, [counts,parent,post]=symbfact(A,'col')
tic; [counts,parent,post]=symbfact(sB,'col'); toc

% dense, M, [counts,parent,post]=symbfact(A,'row')
tic; [counts,parent,post]=symbfact(B,'row'); toc

% sparse, M, [counts,parent,post]=symbfact(A,'row')
tic; [counts,parent,post]=symbfact(sB,'row'); toc

% dense, M, [counts,parent,post]=symbfact(A,'lo')
tic; [counts,parent,post]=symbfact(B,'lo'); toc

% sparse, M, [counts,parent,post]=symbfact(A,'lo')
tic; [counts,parent,post]=symbfact(sB,'lo'); toc