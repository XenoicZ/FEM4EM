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

% dense, M
tic; T = transpose(B); toc
norm(full(T-B.'))

% sparse, M
tic; T = transpose(sB); toc
norm(full(T-sB.'))

% dense, MCol
tic; T = transpose(BCol); toc
norm(full(T-BCol.'))

% sparse, MCol
tic; T = transpose(sBCol); toc
norm(full(T-sBCol.'))

% dense, MRow
tic; T = transpose(BRow); toc
norm(full(T-BRow.'))

% sparse, MRow
tic; T = transpose(sBRow); toc
norm(full(T-sBRow.'))

% dense, Col
tic; T = transpose(Col); toc
norm(full(T-Col.'))

% sparse, Col
tic; T = transpose(sCol); toc
norm(full(T-sCol.'))

% dense, Row
tic; T = transpose(Row); toc
norm(full(T-Row.'))

% sparse, Row
tic; T = transpose(sRow); toc
norm(full(T-sRow.'))