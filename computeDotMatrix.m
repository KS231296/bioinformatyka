 function R = computeDotMatrix(x, y)
begin
 n = length(x);
 m = length(y);
 for i = 1 : n % (i=1; i<=n; i++)
 for j = 1 : m
 begin
 if x(i) == y(j)
 R(i, j) = 1;
 else
 R(i, j) = 0;
 end
 end
 end
