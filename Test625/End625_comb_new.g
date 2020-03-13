Print("\n","Comb ",j,"\n");
Y[j]:=[];
Ncom:=[];
for i in [1..li[j]] do
Bi:=[Binomial(t1,Com[j][i][1]),Binomial(t2,Com[j][i][2]),Binomial(t3,Com[j][i][3]),Binomial(t4,Com[j][i][4]),Binomial(t5,Com[j][i][5]),Binomial(t6,Com[j][i][6])];
for i3 in [1..6] do
if Bi[i3]=0 then Bi[i3]:=1;fi;
od;
Add(Ncom,Product(Bi));
od;
Print("\n","NumComb=",Sum(Ncom),"\n");
for i in [1..li[j]] do
Bin:=[Binomial(t1,Com[j][i][1]),Binomial(t2,Com[j][i][2]),Binomial(t3,Com[j][i][3]),Binomial(t4,Com[j][i][4]),Binomial(t5,Com[j][i][5]),Binomial(t6,Com[j][i][6])];
dd:=[];
for k in [1..6] do
d:=Combinations(VV[k],Com[j][i][k]);
Add(dd,List(d,Union));
od;
for x1 in dd[1] do
for x2 in dd[2] do
for x3 in dd[3] do
for x4 in dd[4] do
for x5 in dd[5] do
for x6 in dd[6] do
cc:=Union(x1,x2,x3,x4,x5,x6);
if Size(cc)=r1 then
  V7wcc := Union(V7[w],cc);
  if Size(ImagesSet(map,V7wcc))=125 then
    if Size(SubsemigroupNC(Em,V7wcc))=125 then
      Add(Y[j],V7wcc);
    fi;
  fi;
fi;
od;od;od;od;od;od;od;
Print("\n","List(Y,Size)=",List(Y,Size),"\n");
