function distij = distanceij(i,j,A,P)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
if(any(P(:)==i))
    distij=-1;
    return
end
if(j==i)
    distij=0;
    return
end

P=[P i];

V=A(i,:);

if(V(j)==1)
    distij=1;
    return
end

for k=1:size(V,2)
    if(V(k)~=0)
        d=distanceij(k,j,A,P);
        if(d~=-1)
            V(k)=V(k)+ d;
            
        else
            V(k)=0;
        end
    end
end

distij=min(V(V>0));
end

