x=[0;1;2;3;4;5];
y=[2.1;7.7;13.6;27.2;40.9;61.1];

%y_approx=a0+a1*x+a2*x^2=a0*z0+a1*z1+a2*z2

%z0=1
%z1=x
%z2=x^2

%Z=[z0 z1 z2 z3 ... zm] (no semicolon)

Z=[ones(size(x)) x x.^2]

a=(Z'*Z)\(Z'*y)