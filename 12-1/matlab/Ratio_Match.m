function[Y]=Ratio_Match(Z,Q)
P=length(Z);
N=P-Q;
if P>Q
    Y = zeros(1,Q);
    d =0;
    i =1;
    for k = 1:P
        d=d+N;
        if d<P
            Y(i)=Z(k);
            i=i+1;
        else
            d=d-P;
        end
    end
else
    Y=Z;
end
1;
