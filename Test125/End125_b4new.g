Info(InfoLocalNRconst, 1, "**************** End125_b4new.g entered");

Print("\n","l=",l," ");
Print("","Binomial(t,l)=",Binomial(t,l),"\n");
r:=Minimum(List(Co,Size));
Print("\n","r=",r,"\n");
Y:=[];

for i in [1..r-1] do
  Y[i]:=[];
od;

VV:=[];
VV[1]:=Filtered(V1,x->Size(x)=1);;
VV[2]:=Filtered(V1,x->Size(x)=4);;
VV[3]:=Filtered(V1,x->Size(x)=5);;
VV[4]:=Filtered(V1,x->Size(x)=8);;
VV[5]:=Filtered(V1,x->Size(x)=10);;
VV[6]:=Filtered(V1,x->Size(x)=16);;
VV[7]:=Filtered(V1,x->Size(x)=20);;
VV[8]:=Filtered(V1,x->Size(x)=25);;
t1:=Size(VV[1]);
t2:=Size(VV[2]);
t3:=Size(VV[3]);
t4:=Size(VV[4]);
t5:=Size(VV[5]);
t6:=Size(VV[6]);
t7:=Size(VV[7]);
t8:=Size(VV[8]);

for j in [r..l] do
  Read("End125_comb_new.g");
od;

Info(InfoLocalNRconst, 1, "**************** End125_b4new.g left");
