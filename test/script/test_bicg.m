format long e
sB = load('../matrix/B.mat').B;
B = full(sB);
sBCol = sB(:,1:170);
BCol = full(sBCol);
sBRow = sB(1:170,:);
BRow = full(sBRow);
sb1 = load('../matrix/b1.mat').B;
b1 = full(sb1);
sb2 = load('../matrix/b2.mat').B;
b2 = full(sb2);

% dense\dense, M\v1
tic; x = bicg(B,b1); toc
norm(full(b1-B*x))

% dense\sparse, M\v1
tic; x = bicg(B,sb1); toc
norm(full(sb1-B*x))

% sparse\dense, M\v1
tic; x = bicg(sB,b1); toc
norm(full(b1-sB*x))

% sparse\sparse, M\v1
tic; x = bicg(sB,sb1); toc
norm(full(sb1-sB*x))

% dense\dense, MCol\v1
tic; x = bicg(BCol,b1); toc
norm(full(b1-BCol*x))

% dense\sparse, MCol\v1
tic; x = bicg(BCol,sb1); toc
norm(full(sb1-BCol*x))

% sparse\dense, MCol\v1
tic; x = bicg(sBCol,b1); toc
norm(full(b1-sBCol*x))

% sparse\sparse, MCol\v1
tic; x = bicg(sBCol,sb1); toc
norm(full(sb1-sBCol*x))

% dense\dense, MRow\v2
tic; x = bicg(BRow,b2); toc
norm(full(b2-BRow*x))

% dense\sparse, MRow\v2
tic; x = bicg(BRow,sb2); toc
norm(full(sb2-BRow*x))

% sparse\dense, MRow\v2
tic; x = bicg(sBRow,b2); toc
norm(full(b2-sBRow*x))

% sparse\sparse, MRow\v2
tic; x = bicg(sBRow,sb2); toc
norm(full(sb2-sBRow*x))