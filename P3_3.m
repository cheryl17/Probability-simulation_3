time=8;
x_2=zeros(1,8);
x_3=zeros(1,8);
for k=1:8
    N=zeros(1,1000);
    M=zeros(1,1000);
    for i=1:1000 
        j=1;
        s1=rand();
        s2=rand();
        max=s1;
        while s2 <= max
            s2=rand();
            j=j+1;
        end
        N(i)=j;
        j=1;
        max=s2;
        s3=rand();
        while s3 <= max
            s3=rand();
            j=j+1;
        end
        M(i)=j;   
end 
x_2(k)=mean(N);
x_3(k)=mean(M);
end 
figure(1);
histogram(N);
title('Frequency distribution of X2');
ylabel('Frequency');
xlabel('X2');
figure(2);
histogram(M);
title('Frequency distribution of X3');
ylabel('Frequency');
xlabel('X3');