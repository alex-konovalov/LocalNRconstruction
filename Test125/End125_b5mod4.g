Info(InfoLocalNRconst, 1, "**************** End125_b5mod4.g entered");
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
Info(InfoLocalNRconst, 1, "**************** End125_b5mod4.g left");
