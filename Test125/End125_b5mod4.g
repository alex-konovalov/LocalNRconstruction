n1:=Size(N1);
Print("\n","Size(N1)=",n1,"\n");
Nor:=Normalizer(Aut,A);
St:=Stabilizer(Nor,a);
Print("\n","Size(St)=",Size(St),"\n");
xset:=ExternalSet(St,N1,OnSets);;
OR:=OrbitsDomain(xset);
Print("\n","Size(OR)=",Size(OR),"\n");
for x in OR do
d:=Representative(x);
Add(MT1,d);
od;
