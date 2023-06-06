format long e
sB = load('../matrix/B.mat').B;
B = full(sB);
sCol = sB(:,1);
Col = full(sCol);
sRow = sB(1,:);
Row = full(sRow);

% dense, M, N=vecnorm(V)
tic; vecnorm(B); toc

% sparse, M, N=vecnorm(V)
tic; vecnorm(sB); toc

% dense, M, N=vecnorm(V,1)
tic; vecnorm(B,1); toc

% sparse, M, N=vecnorm(V,1)
tic; vecnorm(sB,1); toc

% dense, M, N=vecnorm(V,Inf)
tic; vecnorm(B,inf); toc

% sparse, M, N=vecnorm(V,Inf)
tic; vecnorm(sB,Inf); toc

% dense, M, N=vecnorm(V,1,1)
tic; vecnorm(B,1,1); toc

% sparse, M, N=vecnorm(V,1,1)
tic; vecnorm(sB,1,1); toc

% dense, M, N=vecnorm(V,2,1)
tic; vecnorm(B,2,1); toc

% sparse, M, N=vecnorm(V,2,1)
tic; vecnorm(sB,2,1); toc

% dense, M, N=vecnorm(V,Inf,1)
tic; vecnorm(B,inf,1); toc

% sparse, M, N=vecnorm(V,Inf,1)
tic; vecnorm(sB,Inf,1); toc

% dense, M, N=vecnorm(V,1,2)
tic; vecnorm(B,1,2); toc

% sparse, M, N=vecnorm(V,1,2)
tic; vecnorm(sB,1,2); toc

% dense, M, N=vecnorm(V,2,2)
tic; vecnorm(B,2,2); toc

% sparse, M, N=vecnorm(V,2,2)
tic; vecnorm(sB,2,2); toc

% dense, M, N=vecnorm(V,Inf,2)
tic; vecnorm(B,inf,2); toc

% sparse, M, N=vecnorm(V,Inf,2)
tic; vecnorm(sB,Inf,2); toc

% dense, Col, N=vecnorm(V)
tic; vecnorm(Col); toc

% sparse, Col, N=vecnorm(V)
tic; vecnorm(sCol); toc

% dense, Col, N=vecnorm(V,1)
tic; vecnorm(Col,1); toc

% sparse, Col, N=vecnorm(V,1)
tic; vecnorm(sCol,1); toc

% dense, Col, N=vecnorm(V,Inf)
tic; vecnorm(Col,inf); toc

% sparse, Col, N=vecnorm(V,Inf)
tic; vecnorm(sCol,Inf); toc

% dense, Col, N=vecnorm(V,1,1)
tic; vecnorm(Col,1,1); toc

% sparse, Col, N=vecnorm(V,1,1)
tic; vecnorm(sCol,1,1); toc

% dense, Col, N=vecnorm(V,2,1)
tic; vecnorm(Col,2,1); toc

% sparse, Col, N=vecnorm(V,2,1)
tic; vecnorm(sCol,2,1); toc

% dense, Col, N=vecnorm(V,Inf,1)
tic; vecnorm(Col,inf,1); toc

% sparse, Col, N=vecnorm(V,Inf,1)
tic; vecnorm(sCol,Inf,1); toc

% dense, Col, N=vecnorm(V,1,2)
tic; vecnorm(Col,1,2); toc

% sparse, Col, N=vecnorm(V,1,2)
tic; vecnorm(sCol,1,2); toc

% dense, Col, N=vecnorm(V,2,2)
tic; vecnorm(Col,2,2); toc

% sparse, Col, N=vecnorm(V,2,2)
tic; vecnorm(sCol,2,2); toc

% dense, Col, N=vecnorm(V,Inf,2)
tic; vecnorm(Col,inf,2); toc

% sparse, Col, N=vecnorm(V,Inf,2)
tic; vecnorm(sCol,Inf,2); toc

% dense, Row, N=vecnorm(V)
tic; vecnorm(Row); toc

% sparse, Row, N=vecnorm(V)
tic; vecnorm(sRow); toc

% dense, Row, N=vecnorm(V,1)
tic; vecnorm(Row,1); toc

% sparse, Row, N=vecnorm(V,1)
tic; vecnorm(sRow,1); toc

% dense, Row, N=vecnorm(V,Inf)
tic; vecnorm(Row,inf); toc

% sparse, Row, N=vecnorm(V,Inf)
tic; vecnorm(sRow,Inf); toc

% dense, Row, N=vecnorm(V,1,1)
tic; vecnorm(Row,1,1); toc

% sparse, Row, N=vecnorm(V,1,1)
tic; vecnorm(sRow,1,1); toc

% dense, Row, N=vecnorm(V,2,1)
tic; vecnorm(Row,2,1); toc

% sparse, Row, N=vecnorm(V,2,1)
tic; vecnorm(sRow,2,1); toc

% dense, Row, N=vecnorm(V,Inf,1)
tic; vecnorm(Row,inf,1); toc

% sparse, Row, N=vecnorm(V,Inf,1)
tic; vecnorm(sRow,Inf,1); toc

% dense, Row, N=vecnorm(V,1,2)
tic; vecnorm(Row,1,2); toc

% sparse, Row, N=vecnorm(V,1,2)
tic; vecnorm(sRow,1,2); toc

% dense, Row, N=vecnorm(V,2,2)
tic; vecnorm(Row,2,2); toc

% sparse, Row, N=vecnorm(V,2,2)
tic; vecnorm(sRow,2,2); toc

% dense, Row, N=vecnorm(V,Inf,2)
tic; vecnorm(Row,inf,2); toc

% sparse, Row, N=vecnorm(V,Inf,2)
tic; vecnorm(sRow,Inf,2); toc