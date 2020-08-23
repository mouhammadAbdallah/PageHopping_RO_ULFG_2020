clear
clc
links_line="1 2 2 4 1 3 3 1 4 3 0 0";
%links_line="1 2 1 4 4 2 2 7 7 1 0 0";
array=links_line.split(" ");
i=1;
while str2double(array(i))+str2double(array(i+1))>0
    A(str2double(array(i)),str2double(array(i+1)))=1;
    i=i+2;
end
A
s=sum(A);
for i=size(A):-1:1
    if(s(i)==0)
        A(i,:)=[];
        A(:,i)=[];
    end
end
for i=1:size(A,1)
    for j=1:size(A,2)
        d(i,j)=distanceij(i,j,A,[]);
    end
end

somme=sum(sum(d))
possible=size(A,1)*(size(A,1)-1)
avg=somme/possible