Read("init.g");
Info(InfoLocalNRconst, 1, "**************** End125_5base.g entered");
LogTo("End125_5start.txt");

G:=SmallGroup(125,5);
Aut:=AutomorphismGroup(G);
is:=IsomorphismPermGroup(Aut);
P:=SylowSubgroup(Aut,5);
Au:=Image(is);
Pp:=Image(is,P);
Ccs:=ConjugacyClassesSubgroups(Au);;

Sub:=[];

for x in Ccs do
  d:=Representative(x);
  Add(Sub,d);
od;

Su:=Filtered(Sub,x->Size(x)=100);;
Mul:=[];

for x in Su do
  c:=PreImage(is,x);
  Add(Mul,c);
od;

U0:=Filtered(Mul,x->Maximum(OrbitLengths(x,G))=100);;

# U is a list of representatives of conjugacy classes 
# of subgroups of Aut(G)
U:=[];

for x in U0 do
  xp:=Image(is,x);
  d:=ConjugacyClassSubgroups(Au,xp);
  c:=Filtered(d,y->Size(Intersection(Pp,y))=25);
  Add(U,PreImage(is,c[1]));
od;

# Mult is a set of all IdGroups appearing in U
Mult:=AsSet(List(U,IdGroup));;
k1:=Size(Mult);
Print("\n",k1," ");
View(Mult);

h:=function(x,y,z) return x*y*z; end;
f:=function(x,y) return x*y; end;
pos:=function(x) return Position(OrbitLengths(x,G),100);end;
const:=function(a) return function(x) return a^x; end;end;

if Size(U)>1 then 
  UU:=Subgroup(Aut,Union(U));
else 
  UU:=U[1];
fi;

Or:=OrbitsDomain(UU,G)[pos(UU)];
Print("\n","Size(Or)=",Size(Or),"\n");
L:=Difference(G,Or);
L:=Subgroup(G,L);
Print("\n","Size(L)=",Size(L),"\n");
L1:=Difference(L,[One(L)]);;
a:=Or[1];;
g:=const(a);
gen:=MinimalGeneratingSet(G);
En:=Homomorphisms(G,L);;
ne:=Size(En);
Print("Size(En)=",ne,"\n");
N:=[];

for i in [1..ne] do
  gens:=[];
  for y in gen do
    Add(gens,y^En[i]);
  od;
  d:=GroupHomomorphismByImages(G,G,gen,gens);
  Add(N,d);
  En[i]:=[];
od;

En:=[];
N:=Filtered(N,x->x^6=x^3);;
N:=AsSet(N);;
# Order of the set of nilpotent endomorphisms
Print("\n","Size(N)=",Size(N),"\n");
Em:=MagmaWithOne(Union(UU,N));;
map:=MappingByFunction(Em,G,g);
SaveWorkspace("End125_5start");
LogTo();
Read("End125_5all.g");
Info(InfoLocalNRconst, 1, "**************** End125_5base.g left");
