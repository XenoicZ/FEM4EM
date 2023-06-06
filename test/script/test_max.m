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
s = rand(1);

% dense, M, M=max(X)
tic; M=max(B); toc

% sparse, M, M=max(X)
tic; M=max(sB); toc

% dense, M, [M,I]=max(X)
tic; [M,I]=max(B); toc

% sparse, M, [M,I]=max(X)
tic; [M,I]=max(sB); toc

% dense, M, M=max(X,[],1)
tic; M=max(B,[],1); toc

% sparse, M, M=max(X,[],1)
tic; M=max(sB,[],1); toc

% dense, M, M=max(X,[],2)
tic; M=max(B,[],2); toc

% sparse, M, M=max(X,[],2)
tic; M=max(sB,[],2); toc

% dense, M, [M,I]=max(X,[],1)
tic; [M,I]=max(B,[],1); toc

% sparse, M, [M,I]=max(X,[],1)
tic; [M,I]=max(sB,[],1); toc

% dense, M, [M,I]=max(X,[],2)
tic; [M,I]=max(B,[],2); toc

% sparse, M, [M,I]=max(X,[],2)
tic; [M,I]=max(sB,[],2); toc

% dense, Col, M=max(X)
tic; M=max(Col); toc

% sparse, Col, M=max(X)
tic; M=max(sCol); toc

% dense, Col, [M,I]=max(X)
tic; [M,I]=max(Col); toc

% sparse, Col, [M,I]=max(X)
tic; [M,I]=max(sCol); toc

% dense, Col, M=max(X,[],1)
tic; M=max(Col,[],1); toc

% sparse, Col, M=max(X,[],1)
tic; M=max(sCol,[],1); toc

% dense, Col, M=max(X,[],2)
tic; M=max(Col,[],2); toc

% sparse, Col, M=max(X,[],2)
tic; M=max(sCol,[],2); toc

% dense, Col, [M,I]=max(X,[],1)
tic; [M,I]=max(Col,[],1); toc

% sparse, Col, [M,I]=max(X,[],1)
tic; [M,I]=max(sCol,[],1); toc

% dense, Col, [M,I]=max(X,[],2)
tic; [M,I]=max(Col,[],2); toc

% sparse, Col, [M,I]=max(X,[],2)
tic; [M,I]=max(sCol,[],2); toc

% dense, Row, M=max(X)
tic; M=max(Row); toc

% sparse, Row, M=max(X)
tic; M=max(sRow); toc

% dense, Row, [M,I]=max(X)
tic; [M,I]=max(Row); toc

% sparse, Row, [M,I]=max(X)
tic; [M,I]=max(sRow); toc

% dense, Row, M=max(X,[],1)
tic; M=max(Row,[],1); toc

% sparse, Row, M=max(X,[],1)
tic; M=max(sRow,[],1); toc

% dense, Row, M=max(X,[],2)
tic; M=max(Row,[],2); toc

% sparse, Row, M=max(X,[],2)
tic; M=max(sRow,[],2); toc

% dense, Row, [M,I]=max(X,[],1)
tic; [M,I]=max(Row,[],1); toc

% sparse, Row, [M,I]=max(X,[],1)
tic; [M,I]=max(sRow,[],1); toc

% dense, Row, [M,I]=max(X,[],2)
tic; [M,I]=max(Row,[],2); toc

% sparse, Row, [M,I]=max(X,[],2)
tic; [M,I]=max(sRow,[],2); toc

% (dense,dense), (M,M), M=max(X,Y)
tic; M=max(B,B); toc

% (dense,sparse), (M,M), M=max(X,Y)
tic; M=max(B,sB); toc

% (sparse,dense), (M,M), M=max(X,Y)
tic; M=max(sB,B); toc

% (sparse,sparse), (M,M), M=max(X,Y)
tic; M=max(sB,sB); toc

% (dense,dense), (M,Col), M=max(X,Y)
tic; M=max(B,Col); toc

% (dense,sparse), (M,Col), M=max(X,Y)
tic; M=max(B,sCol); toc

% (sparse,dense), (M,Col), M=max(X,Y)
tic; M=max(sB,Col); toc

% (sparse,sparse), (M,Col), M=max(X,Y)
tic; M=max(sB,sCol); toc

% (dense,dense), (M,Row), M=max(X,Y)
tic; M=max(B,Row); toc

% (dense,sparse), (M,Row), M=max(X,Y)
tic; M=max(B,sRow); toc

% (sparse,dense), (M,Row), M=max(X,Y)
tic; M=max(sB,Row); toc

% (sparse,sparse), (M,Row), M=max(X,Y)
tic; M=max(sB,sRow); toc

% (dense,scalar), (M,s), M=max(X,Y)
tic; M=max(B,s); toc

% (sparse,scalar), (M,s), M=max(X,Y)
tic; M=max(sB,s); toc

% (dense,dense), (Col,M), M=max(X,Y)
tic; M=max(Col,B); toc

% (sparse,dense), (Col,M), M=max(X,Y)
tic; M=max(sCol,B); toc

% (dense,sparse), (Col,M), M=max(X,Y)
tic; M=max(Col,sB); toc

% (sparse,sparse), (Col,M), M=max(X,Y)
tic; M=max(sCol,sB); toc

% (dense,dense), (Row,M), M=max(X,Y)
tic; M=max(Row,B); toc

% (sparse,dense), (Row,M), M=max(X,Y)
tic; M=max(sRow,B); toc

% (dense,sparse), (Row,M), M=max(X,Y)
tic; M=max(Row,sB); toc

% (sparse,sparse), (Row,M), M=max(X,Y)
tic; M=max(sRow,sB); toc

% (scalar,dense), (s,M), M=max(X,Y)
tic; M=max(s,B); toc

% (scalar,sparse), (s,M), M=max(X,Y)
tic; M=max(s,sB); toc

% (dense,dense), (Col,Col), M=max(X,Y)
tic; M=max(Col,Col); toc

% (dense,sparse), (Col,Col), M=max(X,Y)
tic; M=max(Col,sCol); toc

% (sparse,dense), (Col,Col), M=max(X,Y)
tic; M=max(sCol,Col); toc

% (sparse,sparse), (Col,Col), M=max(X,Y)
tic; M=max(sCol,sCol); toc

% (dense,dense), (Col,Row), M=max(X,Y)
tic; M=max(Col,Row); toc

% (dense,sparse), (Col,Row), M=max(X,Y)
tic; M=max(Col,sRow); toc

% (sparse,dense), (Col,Row), M=max(X,Y)
tic; M=max(sCol,Row); toc

% (sparse,sparse), (Col,Row), M=max(X,Y)
tic; M=max(sCol,sRow); toc

% (dense,scalar), (Col,s), M=max(X,Y)
tic; M=max(Col,s); toc

% (sparse,scalar), (Col,s), M=max(X,Y)
tic; M=max(sCol,s); toc

% (dense,dense), (Row,Col), M=max(X,Y)
tic; M=max(Row,Col); toc

% (sparse,dense), (Row,Col), M=max(X,Y)
tic; M=max(sRow,Col); toc

% (dense,sparse), (Row,Col), M=max(X,Y)
tic; M=max(Row,sCol); toc

% (sparse,sparse), (Row,Col), M=max(X,Y)
tic; M=max(sRow,sCol); toc

% (scalar,dense), (s,Col), M=max(X,Y)
tic; M=max(s,Col); toc

% (scalar,sparse), (s,Col), M=max(X,Y)
tic; M=max(s,sCol); toc

% (dense,dense), (Row,Row), M=max(X,Y)
tic; M=max(Row,Row); toc

% (dense,sparse), (Row,Row), M=max(X,Y)
tic; M=max(Row,sRow); toc

% (sparse,dense), (Row,Row), M=max(X,Y)
tic; M=max(sRow,Row); toc

% (sparse,sparse), (Row,Row), M=max(X,Y)
tic; M=max(sRow,sRow); toc

% (dense,scalar), (Row,s), M=max(X,Y)
tic; M=max(Row,s); toc

% (sparse,scalar), (Row,s), M=max(X,Y)
tic; M=max(sRow,s); toc

% (scalar,scalar), (s,s), M=max(X,Y)
tic; M=max(s,s); toc