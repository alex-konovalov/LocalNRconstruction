# TODO
# - Write a comment explaining what's going on here
# - Provide some sample input using which this file can be
#   run outside the whole calculation
# - Convert this into a function (is that true that it will
#   have only one argument `r1`? should it return `Com`? Is
#   `li` used only for printing here, or needed later?)
# - Write a test for this function 
# - Start optimising following ideas below (getting timings
#   to check if the suggestions are useful)
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
# TODO: `i mod 10` should be faster. Don't ask for all divisors
# just to check that the number is divisible by 10
if 10 in DivisorsInt(i) then Print("\n","i=",i,"\n");fi;
for x1 in [0..i] do
# the upper bounds only depend on i and should be cached outside
# the loop over x1, to avoid repeatedly recalculating them
for x2 in [0..r2(i)] do
for x3 in [0..r3(i)] do
for x4 in [0..r4(i)] do
for x5 in [0..r5(i)] do
for x6 in [0..r6(i)] do
for x7 in [0..r7(i)] do
for x8 in [0..r8(i)] do
# not the top priority, but one could try to cache partial sums
# and even r1-i since they don't change in inner loops
if x1+x2+x3+x4+x5+x6+x7+x8=i and 3*x2+4*x3+7*x4+9*x5+15*x6+19*x7+24*x8=r1-i
# Indexation into Com may be expensive - maybe create a list, populate
# it, and then assign it to Com[i] afterwards
then Add(Com[i],[x1,x2,x3,x4,x5,x6,x7,x8]);fi;
od;od;od;od;od;od;od;od;od;
li:=List(Com,Size);
Print("\n","List(Com,Size)=",li,"\n");
