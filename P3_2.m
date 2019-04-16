N=zeros(1,100000);
m=zeros(1,100000);
for i=1:100000 
    j=1;
    s1=rand();
    s2=rand();
    while s2 >= s1
        s1=s2;
        s2=rand();
        j=j+1;
    end 
    N(i)=j+1;
    m(i)=mean(N(1:i));
end 
m(100000)
figure(1);
plot(m(1,1:100000))
axis([1 100000 2 3.5]);
title('Estimate of mean');
ylabel('m');
xlabel('sample size');
figure(2);
histogram(N)
title('Frequency distribution of N');
ylabel('Frequency');
xlabel('N');