format long e
n = 341;
s = rand(1);
B = rand(n);
Col = rand(n,1);
Row = rand(1,n);
sB = sparse(B);
sCol = sparse(Col);
sRow = sparse(Row);

% dense.\dense, M.\M
tic; B.\B; toc
norm(full(B.\B-B.\B))

% dense.\dense, M.\Col
tic; B.\Col; toc
norm(full(B.\Col-B.\Col))

% dense.\dense, M.\Row
tic; B.\Row; toc
norm(full(B.\Row-B.\Row))

% dense.\scalar, M.\s
tic; B.\s; toc
norm(full(B.\s-B.\s))

% dense.\dense, Col.\M
tic; Col.\B; toc
norm(full(Col.\B-Col.\B))

% dense.\dense, Col.\Col
tic; Col.\Col; toc
norm(full(Col.\Col-Col.\Col))

% dense.\dense, Col.\Row
tic; Col.\Row; toc
norm(full(Col.\Row-Col.\Row))

% dense.\scalar, Col.\s
tic; Col.\s; toc
norm(full(Col.\s-Col.\s))

% dense.\dense, Row.\M
tic; Row.\B; toc
norm(full(Row.\B-Row.\B))

% dense.\dense, Row.\Col
tic; Row.\Col; toc
norm(full(Row.\Col-Row.\Col))

% dense.\dense, Row.\Row
tic; Row.\Row; toc
norm(full(Row.\Row-Row.\Row))

% dense.\scalar, Row.\s
tic; Row.\s; toc
norm(full(Row.\s-Row.\s))

% scalar.\dense, s.\M
tic; s.\B; toc
norm(full(s.\B-s.\B))

% scalar.\dense, s.\Col
tic; s.\Col; toc
norm(full(s.\Col-s.\Col))

% scalar.\dense, s.\Row
tic; s.\Row; toc
norm(full(s.\Row-s.\Row))

% scalar.\scalar, s.\s
tic; s.\s; toc
norm(full(s.\s-s.\s))

% dense.\sparse, M.\M
tic; B.\sB; toc
norm(full(B.\B-B.\sB))

% dense.\sparse, M.\Col
tic; B.\sCol; toc
norm(full(B.\Col-B.\sCol))

% dense.\sparse, M.\Row
tic; B.\sRow; toc
norm(full(B.\Row-B.\sRow))

% dense.\sparse, Col.\M
tic; Col.\sB; toc
norm(full(Col.\B-Col.\sB))

% dense.\sparse, Col.\Col
tic; Col.\sCol; toc
norm(full(Col.\Col-Col.\sCol))

% dense.\sparse, Col.\Row
tic; Col.\sRow; toc
norm(full(Col.\Row-Col.\sRow))

% dense.\sparse, Row.\M
tic; Row.\sB; toc
norm(full(Row.\B-Row.\sB))

% dense.\sparse, Row.\Col
tic; Row.\sCol; toc
norm(full(Row.\Col-Row.\sCol))

% dense.\sparse, Row.\Row
tic; Row.\sRow; toc
norm(full(Row.\Row-Row.\sRow))

% scalar.\sparse, s.\M
tic; s.\sB; toc
norm(full(s.\B-s.\sB))

% scalar.\sparse, s.\Col
tic; s.\sCol; toc
norm(full(s.\Col-s.\sCol))

% scalar.\sparse, s.\Row
tic; s.\sRow; toc
norm(full(s.\Row-s.\sRow))

% sparse.\dense, M.\M
tic; sB.\B; toc
norm(full(B.\B-sB.\B))

% sparse.\dense, M.\Col
tic; sB.\Col; toc
norm(full(B.\Col-sB.\Col))

% sparse.\dense, M.\Row
tic; sB.\Row; toc
norm(full(B.\Row-sB.\Row))

% sparse.\scalar, M.\s
tic; sB.\s; toc
norm(full(B.\s-sB.\s))

% sparse.\dense, Col.\M
tic; sCol.\B; toc
norm(full(Col.\B-sCol.\B))

% sparse.\dense, Col.\Col
tic; sCol.\Col; toc
norm(full(Col.\Col-sCol.\Col))

% sparse.\dense, Col.\Row
tic; sCol.\Row; toc
norm(full(Col.\Row-sCol.\Row))

% sparse.\scalar, Col.\s
tic; sCol.\s; toc
norm(full(Col.\s-sCol.\s))

% sparse.\dense, Row.\M
tic; sRow.\B; toc
norm(full(Row.\B-sRow.\B))

% sparse.\dense, Row.\Col
tic; sRow.\Col; toc
norm(full(Row.\Col-sRow.\Col))

% sparse.\dense, Row.\Row
tic; sRow.\Row; toc
norm(full(Row.\Row-sRow.\Row))

% sparse.\scalar, Row.\s
tic; sRow.\s; toc
norm(full(Row.\s-Row.\s))