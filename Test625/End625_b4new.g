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
VV[3]:=Filtered(V1,x->Size(x)=8);;
VV[4]:=Filtered(V1,x->Size(x)=20);;
VV[5]:=Filtered(V1,x->Size(x)=40);;
VV[6]:=Filtered(V1,x->Size(x)=100);;
t1:=Size(VV[1]);
t2:=Size(VV[2]);
t3:=Size(VV[3]);
t4:=Size(VV[4]);
t5:=Size(VV[5]);
t6:=Size(VV[6]);
for j in [r..l] do
Read("End625_comb_new.g");
od;
