x1=[0;2;2.5;1;4;7];
x2=[0;1;2;3;6;2];
y=[5;10;9;0;3;27];
n=length(x1);

%---- N -------

sum_x1=sum(x1);
sum_x2=sum(x2);
sum_x1_2=sum(x1.^2);
sum_x1x2=sum(x1.*x2);
sum_x2_2=sum(x2.^2);
N=[n sum_x1 sum_x2; sum_x1 sum_x1_2 sum_x1x2; sum_x2 sum_x1x2 sum_x2_2];

%----- B -----------

sum_y=sum(y);
sum_x1y=sum(x1.*y);
sum_x2y=sum(x2.*y);

B=[sum_y;sum_x1y;sum_x2y];

A=N\B