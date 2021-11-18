# 棋盘上的麦粒
s=1
r=1
for i in range(2,65):
    r=2*r
    s=s+r
print(s,2**64-1)