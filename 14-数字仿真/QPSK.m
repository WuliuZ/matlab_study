%QPSK
D=randi([0,1],1,100);

L=length(D)/2;
a=1/sqrt(2);
S=zeros(1,L);
for k=1:L
    if D(2*k-1:2*k)*flip(2.^[0,1]')==0
        S(k)=a+j*a;
    elseif D(2*k-1:2*k)*flip(2.^[0,1]')==1
        S(k)=a+j*(-1)*a;
    elseif D(2*k-1:2*k)*flip(2.^[0,1]')==2
        S(k)=-a+j*a;
    elseif D(2*k-1:2*k)*flip(2.^[0,1]')==3
        S(k)=-a+j*(-1)*a;
    end
end
scatterplot(S)



1;
