for w in [1..m3] do

  V00:=[];
  for x in V0 do
    if IsSubset(V7[w],x)=false then 
      Add(V00,x);
    fi;
  od;

  V1:=[];
  for x in V00 do
    d:=SubsemigroupNC(Em,Union(V7[w],x));
    if Size(ImagesSet(map,d))=Size(d) then 
      if Size(d)<25 then 
        Add(V1,x);
      else 
        Add(W2,d);
      fi;
    fi;
  od;

  Print("\n","Size(W2)=",Size(W2),"\n");
  if Size(V1)>0 then 
    t:=Minimum(1+r1,Size(V1));
    S2:=List(V1,Size);
    Print("\n","List(V1,Size)=",S2,"\n");
    Co:=[];
    for i in [1..t] do
      d:=Combinations(S2,i);
      for x in d do
        c:=Sum(x);
        if c=r1 then 
          Add(Co,x);
        fi;
      od;
    od;

    if Size(Co)>0 then 
      l:=Maximum(List(Co,Size));
      Read("End125_b4new.g");
      Add(N1,Union(Y));
    else 
      Print("\n","In the Case w=",w," ","no local nearring exists!","\n");
    fi;
  fi;
  Print("\n","The CASE w=", w," ","is completed","\n");
od;
