N=zeros(1,100000);
m=zeros(1,100000);
for i=1:100000 
   sum = 0;
   k=0; 
   while sum <= 1
        sum= sum + rand();
        k=k+1;
   end
   N(i)=k;
   m(i) = mean(N(1:i));
end 
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
