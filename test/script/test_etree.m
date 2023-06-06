format long e
sB = load('../matrix/B.mat').B;
B = full(sB);

% dense, M, parent=etree(A)
tic; parent=etree(B); toc

% sparse, M, parent=etree(A)
tic; parent=etree(sB); toc

% dense, M, parent=etree(A,'sym')
tic; parent=etree(B,'sym'); toc

% sparse, M, parent=etree(A,'sym')
tic; parent=etree(sB,'sym'); toc

% dense, M, parent=etree(A,'col')
tic; parent=etree(B,'col'); toc

% sparse, M, parent=etree(A,'col')
tic; parent=etree(sB,'col'); toc

% dense, M, parent=etree(A,'row')
tic; parent=etree(B,'row'); toc

% sparse, M, parent=etree(A,'row')
tic; parent=etree(sB,'row'); toc

% dense, M, parent=etree(A,'lo')
tic; parent=etree(B,'lo'); toc

% sparse, M, parent=etree(A,'lo')
tic; parent=etree(sB,'lo'); toc

% dense, M, [parent,post]=etree(A)
tic; [parent,post]=etree(B); toc

% sparse, M, [parent,post]=etree(A)
tic; [parent,post]=etree(sB); toc

% dense, M, [parent,post]=etree(A,'sym')
tic; [parent,post]=etree(B,'sym'); toc

% sparse, M, [parent,post]=etree(A,'sym')
tic; [parent,post]=etree(sB,'sym'); toc

% dense, M, [parent,post]=etree(A,'col')
tic; [parent,post]=etree(B,'col'); toc

% sparse, M, [parent,post]=etree(A,'col')
tic; [parent,post]=etree(sB,'col'); toc

% dense, M, [parent,post]=etree(A,'row')
tic; [parent,post]=etree(B,'row'); toc

% sparse, M, [parent,post]=etree(A,'row')
tic; [parent,post]=etree(sB,'row'); toc

% dense, M, [parent,post]=etree(A,'lo')
tic; [parent,post]=etree(B,'lo'); toc

% sparse, M, [parent,post]=etree(A,'lo')
tic; [parent,post]=etree(sB,'lo'); toc