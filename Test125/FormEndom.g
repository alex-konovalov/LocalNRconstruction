LogTo(fn4(i3,i4));
P:=MT;;
s:=Size(P);
SizeScreen([256,10000000]);
Print("\n ","G:=SmallGroup(125,5);","\n");
Print("\n ");
Print("P:=[",P[1]);
for i in [2..s] do
d:=P[i];
Print(",", d);
od;
Print("];");
Print("\n ");
LogTo();


