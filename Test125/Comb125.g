#LogTo("Combin.txt");
r2:=function(i) return  Minimum(i,QuoInt(r1-i,3));end;
r3:=function(i) return  Minimum(i,QuoInt(r1-i,4));end;
r4:=function(i) return  Minimum(i,QuoInt(r1-i,7));end;
r5:=function(i) return  Minimum(i,QuoInt(r1-i,9));end;
r6:=function(i) return  Minimum(i,QuoInt(r1-i,15));end;
r7:=function(i) return  Minimum(i,QuoInt(r1-i,19));end;
r8:=function(i) return  Minimum(i,QuoInt(r1-i,24));end;
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
for x7 in [0..r7(i)] do
for x8 in [0..r8(i)] do
if x1+x2+x3+x4+x5+x6+x7+x8=i and 3*x2+4*x3+7*x4+9*x5+15*x6+19*x7+24*x8=r1-i
then Add(Com[i],[x1,x2,x3,x4,x5,x6,x7,x8]);fi;
od;od;od;od;od;od;od;od;od;
li:=List(Com,Size);
Print("\n","List(Com,Size)=",li,"\n");
