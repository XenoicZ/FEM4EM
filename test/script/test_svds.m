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

% dense, M, E=svds(A)
tic; E=svds(B); toc

% sparse, M, E=svds(A)
tic; E=svds(sB); toc

% dense, M, [U,S,V]=svds(A)
tic; [U,S,V]=svds(B); toc
norm(full(B-U*S*V'))

% sparse, M, [U,S,V]=svds(A)
tic; [U,S,V]=svds(sB); toc
norm(full(sB-U*S*V'))

% dense, M, [U,S,V]=svds(A,10)
tic; [U,S,V]=svds(B,10); toc
norm(full(B-U*S*V'))

% sparse, M, [U,S,V]=svds(A,10)
tic; [U,S,V]=svds(sB,10); toc
norm(full(sB-U*S*V'))

% dense, MCol, E=svds(A)
tic; E=svds(BCol); toc

% sparse, MCol, E=svds(A)
tic; E=svds(sBCol); toc

% dense, MCol, [U,S,V]=svds(A)
tic; [U,S,V]=svds(BCol); toc
norm(full(BCol-U*S*V'))

% sparse, MCol, [U,S,V]=svds(A)
tic; [U,S,V]=svds(sBCol); toc
norm(full(sBCol-U*S*V'))

% dense, MCol, [U,S,V]=svds(A,10)
tic; [U,S,V]=svds(BCol,10); toc
norm(full(BCol-U*S*V'))

% sparse, MCol, [U,S,V]=svds(A,10)
tic; [U,S,V]=svds(sBCol,10); toc
norm(full(sBCol-U*S*V'))

% dense, MRow, E=svds(A)
tic; E=svds(BRow); toc

% sparse, MRow, E=svds(A)
tic; E=svds(sBRow); toc

% dense, MRow, [U,S,V]=svds(A)
tic; [U,S,V]=svds(BRow); toc
norm(full(BRow-U*S*V'))

% sparse, MRow, [U,S,V]=svds(A)
tic; [U,S,V]=svds(sBRow); toc
norm(full(sBRow-U*S*V'))

% dense, MRow, [U,S,V]=svds(A,10)
tic; [U,S,V]=svds(BRow,10); toc
norm(full(BRow-U*S*V'))

% sparse, MRow, [U,S,V]=svds(A,10)
tic; [U,S,V]=svds(sBRow,10); toc
norm(full(sBRow-U*S*V'))

% dense, Col, E=svds(A)
tic; E=svds(Col); toc

% sparse, Col, E=svds(A)
tic; E=svds(sCol); toc

% dense, Col, [U,S,V]=svds(A)
tic; [U,S,V]=svds(Col); toc
norm(full(Col-U*S*V'))

% sparse, Col, [U,S,V]=svds(A)
tic; [U,S,V]=svds(sCol); toc
norm(full(sCol-U*S*V'))

% dense, Col, [U,S,V]=svds(A,10)
tic; [U,S,V]=svds(Col,10); toc
norm(full(Col-U*S*V'))

% sparse, Col, [U,S,V]=svds(A,10)
tic; [U,S,V]=svds(sCol,10); toc
norm(full(sCol-U*S*V'))

% dense, Row, E=svds(A)
tic; E=svds(Row); toc

% sparse, Row, E=svds(A)
tic; E=svds(sRow); toc

% dense, Row, [U,S,V]=svds(A)
tic; [U,S,V]=svds(Row); toc
norm(full(Row-U*S*V'))

% sparse, Row, [U,S,V]=svds(A)
tic; [U,S,V]=svds(sRow); toc
norm(full(sRow-U*S*V'))

% dense, Row, [U,S,V]=svds(A,10)
tic; [U,S,V]=svds(Row,10); toc
norm(full(Row-U*S*V'))

% sparse, Row, [U,S,V]=svds(A,10)
tic; [U,S,V]=svds(sRow,10); toc
norm(full(sRow-U*S*V'))