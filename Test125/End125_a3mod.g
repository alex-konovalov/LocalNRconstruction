A:=U1[i2]; #current group
NN:=ShallowCopy(N);;
W1:=[]; # list of 'good' endomorphisms from the list N

repeat
  d:=DoubleCoset(A,NN[1],A);
  c:=AsSet(d);
  if Size(c)<=25 then
    Add(W1,c);
  fi;
  NN:=Difference(NN,d);
until Size(NN)=0;

V2:=AsSet(W1);;
Print("\n","List(V2,Size)=",List(V2,Size),"\n");
V3:=[]; # list of 'good' endomorphisms
V4:=[]; # list of semigroups of order < 25
W2:=[]; # list of semigroups of order >= 25

# check subsemigroups 
for x in V2 do
  d:=SubsemigroupNC(Em,x);
  if Size(ImagesSet(map,d))=Size(d) then 
    if Size(d)<25 then 
      Add(V3,x);
      Add(V4,d);
    else 
      Add(W2,d);
    fi;
  fi;
od;

Print("\n","List(V3,Size)=",List(V3,Size),"\n");
Print("\n","OrbitLengths(A,L)=",OrbitLengths(A,L),"\n");
S0:=Reversed(AsSet(List(V4,Size)));
Print("\n","S0=",S0,"\n");
s:=Maximum(OrbitLengths(A,L));
N1:=[];

if S0[1]>s then
  repeat
    Print("Size(V3)=",Size(V3),"\n");
    Print("Size(V4)=",Size(V4),"\n");
    W3:=Union(V3);
    W4:=[];
    for x in W3 do
      Add(W4,a^x);
    od;
    W4:=AsSet(W4);
    if Size(W4)<24 then 
      S0[1]:=0;
    fi;
    if Size(S0)=0 then 
      S0[1]:=0;
    fi;
    m:=S0[1];
    V5:=Filtered(V4,x->Size(x)=S0[1]);
    m1:=Size(V5);
    Print(" ","Size(V5)=",m1,"\n");
    Read("End125_b6cor.g");
    V4:=[];
    W:=[];
    for x in V3 do
      d:=SubsemigroupNC(Em,x);
      if Size(d)<m then 
        Add(W,x);
        Add(V4,d);
      fi;
    od;
    V3:=W;;
    Remove(S0,1);
    if Size(S0)=0 then 
      S0[1]:=0;
    fi;
    Print("S0=",S0,"\n");
  until S0[1]<s+1;
fi;

N1:=Union(N1);;
for x in W2 do
  Add(N1,Union(x,x)); # is Union(x,x) same as Set(x) ???
od;
Read("End125_b5mod4.g");
