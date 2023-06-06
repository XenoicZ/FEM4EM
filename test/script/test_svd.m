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

% dense, M, E=svd(A)
tic; E=svd(B); toc

% sparse, M, E=svd(A)
tic; E=svd(sB); toc

% dense, M, [U,S,V]=svd(A)
tic; [U,S,V]=svd(B); toc
norm(full(B-U*S*V'))

% sparse, M, [U,S,V]=svd(A)
tic; [U,S,V]=svd(sB); toc
norm(full(sB-U*S*V'))

% dense, M, [U,S,V]=svd(A,'econ')
tic; [U,S,V]=svd(B,'econ'); toc
norm(full(B-U*S*V'))

% sparse, M, [U,S,V]=svd(A,'econ')
tic; [U,S,V]=svd(sB,'econ'); toc
norm(full(sB-U*S*V'))

% dense, M, [U,S,V]=svd(A,0)
tic; [U,S,V]=svd(B,0); toc
norm(full(B-U*S*V'))

% sparse, M, [U,S,V]=svd(A,0)
tic; [U,S,V]=svd(sB,0); toc
norm(full(sB-U*S*V'))

% dense, MCol, E=svd(A)
tic; E=svd(BCol); toc

% sparse, MCol, E=svd(A)
tic; E=svd(sBCol); toc

% dense, MCol, [U,S,V]=svd(A)
tic; [U,S,V]=svd(BCol); toc
norm(full(BCol-U*S*V'))

% sparse, MCol, [U,S,V]=svd(A)
tic; [U,S,V]=svd(sBCol); toc
norm(full(sBCol-U*S*V'))

% dense, MCol, [U,S,V]=svd(A,'econ')
tic; [U,S,V]=svd(BCol,'econ'); toc
norm(full(BCol-U*S*V'))

% sparse, MCol, [U,S,V]=svd(A,'econ')
tic; [U,S,V]=svd(sBCol,'econ'); toc
norm(full(sBCol-U*S*V'))

% dense, MCol [U,S,V]=svd(A,0)
tic; [U,S,V]=svd(BCol,0); toc
norm(full(BCol-U*S*V'))

% sparse, MCol, [U,S,V]=svd(A,0)
tic; [U,S,V]=svd(sBCol,0); toc
norm(full(sBCol-U*S*V'))

% dense, MRow, E=svd(A)
tic; E=svd(BRow); toc

% sparse, MRow, E=svd(A)
tic; E=svd(sBRow); toc

% dense, MRow, [U,S,V]=svd(A)
tic; [U,S,V]=svd(BRow); toc
norm(full(BRow-U*S*V'))

% sparse, MRow, [U,S,V]=svd(A)
tic; [U,S,V]=svd(sBRow); toc
norm(full(sBRow-U*S*V'))

% dense, MRow, [U,S,V]=svd(A,'econ')
tic; [U,S,V]=svd(BRow,'econ'); toc
norm(full(BRow-U*S*V'))

% sparse, MRow, [U,S,V]=svd(A,'econ')
tic; [U,S,V]=svd(sBRow,'econ'); toc
norm(full(sBRow-U*S*V'))

% dense, MRow, [U,S,V]=svd(A,0)
tic; [U,S,V]=svd(BRow,0); toc
norm(full(BRow-U*S*V'))

% sparse, MRow, [U,S,V]=svd(A,0)
tic; [U,S,V]=svd(sBRow,0); toc
norm(full(sBRow-U*S*V'))

% dense, Col, E=svd(A)
tic; E=svd(Col); toc

% sparse, Col, E=svd(A)
tic; E=svd(sCol); toc

% dense, Col, [U,S,V]=svd(A)
tic; [U,S,V]=svd(Col); toc
norm(full(Col-U*S*V'))

% sparse, Col, [U,S,V]=svd(A)
tic; [U,S,V]=svd(sCol); toc
norm(full(sCol-U*S*V'))

% dense, Col, [U,S,V]=svd(A,'econ')
tic; [U,S,V]=svd(Col,'econ'); toc
norm(full(Col-U*S*V'))

% sparse, Col, [U,S,V]=svd(A,'econ')
tic; [U,S,V]=svd(sCol,'econ'); toc
norm(full(sCol-U*S*V'))

% dense, Col, [U,S,V]=svd(A,0)
tic; [U,S,V]=svd(Col,0); toc
norm(full(Col-U*S*V'))

% sparse, Col, [U,S,V]=svd(A,0)
tic; [U,S,V]=svd(sCol,0); toc
norm(full(sCol-U*S*V'))

% dense, Row, E=svd(A)
tic; E=svd(Row); toc

% sparse, Row, E=svd(A)
tic; E=svd(sRow); toc

% dense, Row, [U,S,V]=svd(A)
tic; [U,S,V]=svd(Row); toc
norm(full(Row-U*S*V'))

% sparse, Row, [U,S,V]=svd(A)
tic; [U,S,V]=svd(sRow); toc
norm(full(sRow-U*S*V'))

% dense, Row, [U,S,V]=svd(A,'econ')
tic; [U,S,V]=svd(Row,'econ'); toc
norm(full(Row-U*S*V'))

% sparse, Row, [U,S,V]=svd(A,'econ')
tic; [U,S,V]=svd(sRow,'econ'); toc
norm(full(sRow-U*S*V'))

% dense, Row, [U,S,V]=svd(A,0)
tic; [U,S,V]=svd(Row,0); toc
norm(full(Row-U*S*V'))

% sparse, Row, [U,S,V]=svd(A,0)
tic; [U,S,V]=svd(sRow,0); toc
norm(full(sRow-U*S*V'))