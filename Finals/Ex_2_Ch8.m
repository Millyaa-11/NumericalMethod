x=[0;1;2;3;4;5];
y=[2.1;7.7;13.6;27.2;40.9;61.1];
n=length(x);
m=2;
sum_x=sum(x);
sum_y=sum(y);
sum_x2=sum(x.^2);
sum_x3=sum(x.^3);
sum_x4=sum(x.^4);
sum_xy=sum(x.*y);
sum_x2y=sum((x.^2).*y);
N=[n sum_x sum_x2; sum_x sum_x2 sum_x3;sum_x2 sum_x3 sum_x4];
B=[sum_y;sum_xy;sum_x2y];
A=N\B;
a0=A(1);
a1=A(2);
a2=A(3);
y_approx=a0+a1*x+a2*(x.^2);
e=y-y_approx;
S_r=sum(e.^2);
y_bar=sum_y/length(y);
S_t=sum((y-y_bar).^2);
r2=(S_t-S_r)/S_t
s_yx=sqrt(S_r/(n-(m+1)))