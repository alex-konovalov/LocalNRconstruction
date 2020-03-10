Comb125 := function( r1 )
local Com,i,j,x1,x2,x3,x4,x5,x6,x7,x8,li,ub,ubf,disp;
# TODO: Write a comment explaining what's going on here
#
#LogTo("Combin.txt");

ubf := [];
disp := [,3,4,7,9,15,19,24]; # 1st entry is empty for the convenience of indexation 
for j in [2..8] do
  ubf[j]:=function(i) return Minimum(i,QuoInt(r1-i,disp[j]));end;
od;
  
Com:=[];

for i in [1..r1] do

  if i mod 10 = 0 then Print("\n","i=",i,"\n");fi;
  Com[i]:=[];
  
  ub := [];
  for j in [2..8] do
    ub[j]:=ubf[j](i);
  od;

  for x1 in [0..i] do
    for x2 in [0..ub[2]] do
      for x3 in [0..ub[3]] do
        for x4 in [0..ub[4]] do
          for x5 in [0..ub[5]] do
            for x6 in [0..ub[6]] do
              for x7 in [0..ub[7]] do
                for x8 in [0..ub[8]] do
                  # not the top priority, but one could try to cache partial sums
                  # and even r1-i since they don't change in inner loops
                  if x1+x2+x3+x4+x5+x6+x7+x8=i and 
                    disp[2]*x2+disp[3]*x3+disp[4]*x4+disp[5]*x5+disp[6]*x6+disp[7]*x7+disp[8]*x8=r1-i then
                    # Indexation into Com may be expensive - maybe create a list, populate
                    # it, and then assign it to Com[i] afterwards
                    Add( Com[i], [x1,x2,x3,x4,x5,x6,x7,x8] );
                  fi; 
                od;
              od;
            od;
          od;
        od;
      od;
    od;
  od;
  
od;
 
li:=List(Com,Size);
Print("\n","List(Com,Size)=",li,"\n");
return [Com,li];
end;
