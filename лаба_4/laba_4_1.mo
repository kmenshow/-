model laba_4_1
//x'' + g* x' + w^2* x = f(t)
parameter Real w = sqrt(2.4);
parameter Real g = 0; 
parameter Real x0 = 2;
parameter Real y0 = -1;
Real x(start=x0);
Real y(start=y0);
equation
der(x) = y; 
der(y) = -w*w*x - g*y;

end laba_4_1;
