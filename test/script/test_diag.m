format long e
sB = load('../matrix/B.mat').B;
B = full(sB);
sCol = sB(:,1);
Col = full(sCol);
sRow = sB(1,:);
Row = full(sRow);

% dense, M, diag(X,0)
tic; diag(B,0); toc

% dense, M, diag(X,1)
tic; diag(B,1); toc

% sparse, M, diag(X,0)
tic; diag(sB,0); toc

% sparse, M, diag(X,1)
tic; diag(sB,1); toc

% dense, Col, diag(V,0)
tic; diag(Col,0); toc

% dense, Col, diag(V,1)
tic; diag(Col,1); toc

% sparse, Col, diag(V,0)
tic; diag(sCol,0); toc

% sparse, Col, diag(V,1)
tic; diag(sCol,1); toc

% dense, Row, diag(V,0)
tic; diag(Row,0); toc

% dense, Row, diag(V,1)
tic; diag(Row,1); toc

% sparse, Row, diag(V,0)
tic; diag(sRow,0); toc

% sparse, Row, diag(V,1)
tic; diag(sRow,1); toc