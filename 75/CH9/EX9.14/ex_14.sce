        //    PG (620)

T = [2 1 0 0 0 0;1 2 1 0 0 0;0 1 2 1 0 0;0 0 1 2 1 0;0 0 0 1 2 1;0 0 0 0 1 2]
lam = spec(T)'
lam1 = lam(1,1)
B = [2-lam1 1 0 0 0 0;1 2-lam1 1 0 0 0;0 1 2-lam1 1 0 0;0 0 1 2-lam1 1 0;0 0 0 1 2-lam1 1;0 0 0 0 1 2]
f0 = abs(det(B))
f1 = 2-lam1
