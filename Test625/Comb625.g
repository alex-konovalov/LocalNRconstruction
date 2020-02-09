#LogTo("Combin.txt");
r2:=function(i) return  Minimum(i,QuoInt(r1-i,3));end;
r3:=function(i) return  Minimum(i,QuoInt(r1-i,7));end;
r4:=function(i) return  Minimum(i,QuoInt(r1-i,19));end;
r5:=function(i) return  Minimum(i,QuoInt(r1-i,39));end;
r6:=function(i) return  Minimum(i,QuoInt(r1-i,99));end;
Com:=[];
for i in [1..r1] do
Com[i]:=[];
if 10 in DivisorsInt(i) then Print("\n","i=",i,"\n");fi;
for x1 in [0..i] do
for x2 in [0..r2(i)] do
for x3 in [0..r3(i)] do
for x4 in [0..r4(i)] do
for x5 in [0..r5(i)] do
for x6 in [0..r6(i)] do
if x1+x2+x3+x4+x5+x6=i and 3*x2+7*x3+19*x4+39*x5+99*x6=r1-i
then Add(Com[i],[x1,x2,x3,x4,x5,x6]);fi;
od;od;od;od;od;od;od;
li:=List(Com,Size);
Print("\n","List(Com,Size)=",li,"\n");
