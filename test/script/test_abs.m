format long e
sB = load('../matrix/B.mat').B;
B = full(sB);
sCol = sCol(:,1);
Col = full(Col);
sRow = sRow(:,1);
Row = full(sRow);

% dense, M
tic; abs(B); toc

% sparse, M
tic; abs(sB); toc

% dense, Col
tic; abs(Col); toc

% sparse, Col
tic; abs(sCol); toc

% dense, Row
tic; abs(Row); toc

% sparse, Row
tic; abs(sRow); toc