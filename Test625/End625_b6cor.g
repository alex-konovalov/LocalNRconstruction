for v in [1..m1] do
V0:=[];
for x in V3 do
if IsSubset(V5[v],x)=false then Add(V0,x);fi;
od;
V6:=[];
for x in V0 do
d:=SubsemigroupNC(Em,Union(V5[v],x));
if Size(ImagesSet(map,d))=Size(d) then if Size(d)<125 then Add(V6,d);
else Add(W2,d);fi;fi;
od;
Print("\n","Size(W2)=",Size(W2),"\n");
Print("Size(V6)=",Size(V6),"\n");
if Size(V6)>0 then
S00:=Reversed(AsSet(List(V6,Size)));
Print("\n","S00=",S00,"\n");
repeat
m2:=S00[1];
r1:=125-m2;
Print(" ","r1=",r1,"\n");
Read("Comb625.g");
V7:=[];
for x in V6 do
if Size(x)=m2 then Add(V7,x);fi;
od;
m3:=Size(V7);
Print(" ","Size(V7)=",m3,"\n");
Read("End625_b7cor.g");
Remove(S00,1);
Print("S00=",S00,"\n");
until Size(S00)=0;
else Print("\n","In the Case v=",v," ","no local nearring exists!","\n");fi;
Print("\n","The CASE v=", v," ","is completed","\n");
#SaveWorkspace(fn3(i1,i2));
od;
