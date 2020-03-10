Comb125 := function( r1 )
local r2,r3,r4,r5,r6,r7,r8,Com,i,x1,x2,x3,x4,x5,x6,x7,x8,li,
ub2,ub3,ub4,ub5,ub6,ub7,ub8;
# TODO: Write a comment explaining what's going on here
#
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
if i mod 10 = 0 then Print("\n","i=",i,"\n");fi;

ub2:=r2(i);
ub3:=r3(i);
ub4:=r4(i);
ub5:=r5(i);
ub6:=r6(i);
ub7:=r7(i);
ub8:=r8(i);

for x1 in [0..i] do
for x2 in [0..ub2] do
for x3 in [0..ub3] do
for x4 in [0..ub4] do
for x5 in [0..ub5] do
for x6 in [0..ub6] do
for x7 in [0..ub7] do
for x8 in [0..ub8] do
# not the top priority, but one could try to cache partial sums
# and even r1-i since they don't change in inner loops
if x1+x2+x3+x4+x5+x6+x7+x8=i and 3*x2+4*x3+7*x4+9*x5+15*x6+19*x7+24*x8=r1-i
# Indexation into Com may be expensive - maybe create a list, populate
# it, and then assign it to Com[i] afterwards
then Add(Com[i],[x1,x2,x3,x4,x5,x6,x7,x8]);fi;
od;od;od;od;od;od;od;od;od;
li:=List(Com,Size);
Print("\n","List(Com,Size)=",li,"\n");
return [Com,li];
end;
