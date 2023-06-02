n = 341;
s = rand(1);
B = rand(n);
Col = rand(n,1);
Row = rand(1,n);
sB = sparse(B);
sCol = sparse(Col);
sRow = sparse(Row);

% scalar+dense, s+Col
tic; s+Col; toc;
norm(full(s+Col-(s+Col)))
exit