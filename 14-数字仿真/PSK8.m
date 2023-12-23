data_num=300;
data =randi([0,1],1,300);

fs_16k=16e3;
it=[];qt=[];

L=length(data)/2;
S=zeros(1,L);
for i=1:L
    I(i) = data(i); 
    Q(i+1) = data(i+1);
    U(i+2) = data(i+2);   
    if I(i)==0 && Q(i+1)==0 && U(i+2)==0
        
        it=0.924*ones(1,1);%1行1列的全为1的矩阵
        qt=0.383*ones(1,1);
        S(i)=it+j*qt;
       
    elseif I(i)==0 && Q(i+1)==0 && U(i+2)==1
        it=0.383*ones(1,1);
        qt=0.924*ones(1,1);
        S(i)=it+j*qt;
       
    elseif I(i)==0 && Q(i+1)==1 && U(i+2)==1
        it=-0.383*ones(1,1);
        qt=0.924*ones(1,1);
        S(i)=it+j*qt;
       
    elseif I(i)==0 && Q(i+1)==1 && U(i+2)==0
        it=-0.924*ones(1,1);
        qt=0.383*ones(1,1);
        S(i)=it+j*qt;
     
    elseif I(i)==1 && Q(i+1)==1 && U(i+2)==0
        it=-0.924*ones(1,1);
        qt=-0.383*ones(1,1);
        S(i)=it+j*qt;
      
    elseif I(i)==1 && Q(i+1)==1 && U(i+2)==1
        it=-0.383*ones(1,1);
        qt=-0.924*ones(1,1); 
        S(i)=it+j*qt;
        
    elseif I(i)==1 && Q(i+1)==0 && U(i+2)==1 
        it=0.383*ones(1,1);
        qt=-0.924*ones(1,1);
        S(i)=it+j*qt;
       
    elseif I(i)==1 && Q(i+1)==0 && U(i+2)==0
        it=0.924*ones(1,1);
        qt=-0.383*ones(1,1);
        S(i)=it+j*qt;
       
    end
 
end 
scatterplot(S);%星座图