Comb125 := function( r1 )
local Com,i,j,x1,li,ub,ubf,disp,jj;
# TODO: Write a comment explaining what's going on here
#
#LogTo("Combin.txt");

disp := [3,4,7,9,15,19,24]; 

# list of functions to return upper bounds
ubf := List(disp, j -> function(i) return Minimum(i,QuoInt(r1-i,j));end );

Com:=[];

for i in [1..r1] do

  Com[i]:=[];
  if i mod 10 = 0 then Print("\n","i=",i,"\n");fi;

  # list of upper bounds
  ub := List( ubf, ubfunc -> ubfunc(i));

  for x1 in [0..i] do
    for jj in IteratorOfCartesianProduct( List(ub, j -> [0..j]) ) do
      if x1+Sum(jj)=i and disp*jj=r1-i then 
        Add(Com[i],Concatenation([x1],jj));
      fi;
    od;
  od;
od;

li:=List(Com,Size);
Print("\n","List(Com,Size)=",li,"\n");
return [Com,li];

end;
