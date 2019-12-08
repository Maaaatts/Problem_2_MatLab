%General Equation of a circle

%c = x.^2 + y.^2 + Dx + Ey + F;

%Input points in the circle
x1 = input('x-component of first circle: ');
y1 = input('y-component of first circle: ');
x2 = input('x-component of second circle: ');
y2 = input('y-component of second circle: ');
x3 = input('x-component of third circle: ');
y3 = input('y-component of third circle: ');

%Declaration of points in the circle
a = [x1, y1, x2, y2, x3, y3];

%Solving for D, E, F in the circle
%Use Determinant method for finding the general equation of a circle

x2y2 = [(x1^2)+(y1^2); (x2^2)+(y2^2); (x3^2)+(y3^2)];
x = [x1; x2; x3];
y = [y1; y2; y3];
o = [1; 1; 1];

d = [x, y, o];
d1 = [x2y2, y, o];
d2 = [x2y2, x, o];
d3 = [x2y2, x, y];
%Use Laplace Expansion
c1 = det(d); %Coefficient of x^2 + y^2
c2 = -det(d1); %Coefficient of x
c3 = det(d2); %Coefficient of y
c4 = -det(d3); %Coefficient of the constant F

D = c2/c1; %Divide the value by the coefficient of x^2 + y^2 to obtain Dx
E = c3/c1; %Divide the value by the coefficient of x^2 + y^2 to obtain Ey
F = c4/c1; %Divide the value by the coefficient of x^2 + y^2 to obtain F

%Compute values of h and k

%Completing the square
xv = [1, D, (D/2)^2];
yv = [1, E, (E/2)^2];

hh = roots(xv);
h = hh(1);
hr = round(h,2); %Final h
kk = roots(yv);
k = kk(1);
kr = round(k,2); %Final k
r = (-F + (D/2).^2 + (E/2).^2);
rr = sqrt(round(r,2)); %Final r

fprintf('The center of the circle is: (%.2f, %.2f)\n', hr,kr);
fprintf('The radius of the circle is: %.2f\n', rr)
fprintf('The vector [D,E,F]: [%.2f, %.2f, %.2f]\n',D,E,F)