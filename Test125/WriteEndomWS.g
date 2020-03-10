s:=Size(MT1);
Li:=AsSortedList(G);
n:=Size(G);
mg:=MinimalGeneratingSet(A);
P:=[];
f:=function(x,y) return x*y;end;
for i in [1..s] do
en:=MT1[i];;
M:=[]; 
if Size(en)>1 then
repeat
x:=en[2];
d:=ConjugacyClass(A,x);
c:=AsSet(ListX(d,A,f));
Add(M,c[1]);
en:=Difference(en,c);
until Size(en)<2;
else Add(M,en[1]);fi;
gen:=Union(mg,M);
P[i]:=[];
for x in gen do
d:=[];
for j in [1..n] do
Add(d,Position(Li,Li[j]^x));
od;
Add(P[i],d);
od;
if 5 in DivisorsInt(Size(P)) then 
Print("\n","Size(P)=",Size(P),"\n");fi;
od;
Add(MT2,P);


