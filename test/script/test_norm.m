format long e
sB = load('../matrix/B.mat').B;
B = full(sB);
sCol = sB(:,1);
Col = full(sCol);
sRow = sB(1,:);
Row = full(sRow);

% dense, M, N=norm(V)
tic; norm(B); toc

% sparse, M, N=norm(V)
tic; norm(sB); toc

% dense, M, N=norm(V,1)
tic; norm(B,1); toc

% sparse, M, N=norm(V,1)
tic; norm(sB,1); toc

% dense, M, N=norm(V,Inf)
tic; norm(B,inf); toc

% sparse, M, N=norm(V,Inf)
tic; norm(sB,Inf); toc

% dense, Col, N=norm(V)
tic; norm(Col); toc

% sparse, Col, N=norm(V)
tic; norm(sCol); toc

% dense, Col, N=norm(V,1)
tic; norm(Col,1); toc

% sparse, Col, N=norm(V,1)
tic; norm(sCol,1); toc

% dense, Col, N=norm(V,Inf)
tic; norm(Col,inf); toc

% sparse, Col, N=norm(V,Inf)
tic; norm(sCol,Inf); toc

% dense, Row, N=norm(V)
tic; norm(Row); toc

% sparse, Row, N=norm(V)
tic; norm(sRow); toc

% dense, Row, N=norm(V,1)
tic; norm(Row,1); toc

% sparse, Row, N=norm(V,1)
tic; norm(sRow,1); toc

% dense, Row, N=norm(V,Inf)
tic; norm(Row,inf); toc

% sparse, Row, N=norm(V,Inf)
tic; norm(sRow,Inf); toc