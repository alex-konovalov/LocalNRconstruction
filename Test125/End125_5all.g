Read("init.g");
Info(InfoLocalNRconst, 1, "**************** End125_5all.g entered");

# Functions to generate names of output files

fn:=function(x)
local log;
log := Concatenation("End125_5mult_",String(x),".txt");
return log;end;

fn1:=function(x)
local fu;
fu := Concatenation("End125_5mult_",String(x));
return fu;end;

fn2:=function(x,y)
local fun;
fun := Concatenation("End125_5mult_",String(x),"_",String(y));
return fun;end;

fn3:=function(x,y)
local func;
func := Concatenation("Endom125_5mult_",String(x),"_",String(y),"_v");
return func;end;

fn4:=function(i3,i4)
local name;
name := Concatenation("Endom125_5-",String(i3),"_",String(i4),".txt");
return name;end;

# MT (list of multiplication tables) - main outcome of our calculation
MT:=[];

# k1=Size(Mult) is the size of the set of candidates for 
# multiplicative group (up to IdGroup) of a local nearring

for i1 in [1.. k1] do
  LogTo(fn(i1));
  Print("\n","The CASE i1=", i1," started\n");
  MT2:=[];
  # U1 is a list of subgroups of Aut(G) with the current IdGroup
  U1:=Filtered(U,x->IdGroup(x)=Mult[i1]);;
  u:=Size(U1);
  Print("\n","Size(U1)=",u ," IdGroup=", Mult[i1], "\n ");
  for i2 in [1..u] do
    Print("The CASE i2=", i2," started\n");
    MT1:=[];
    Read("End125_a3mod.g");
    Read("WriteEndomWS.g");
    Print("The CASE i2=", i2," is completed\n");
    Print("\n","Size(MT1)=",Size(MT1)," Size(MT2)=",Size(MT2),"\n");
    #SaveWorkspace(fn2(i1,i2));
  od;
  Print("\n","List(MT2,Size)=",List(MT2,Size),"\n");
  MT:=Concatenation(MT2);;
  Print("\n","Size(MT)=",Size(MT),"\n");
  SaveWorkspace(fn1(i1));

  Print("\n","The CASE i1=", i1," is completed\n");
  Print("\n","IdGroup(A)=",IdGroup(A),"\n");
  i3:=IdGroup(A)[1];
  i4:=IdGroup(A)[2];
  LogTo();
  Read("FormEndom.g");
od;

Info(InfoLocalNRconst, 1, "**************** End125_5all.g left");

