model laba_4_3
//x'' + g* x' + w^2* x = f(t)
parameter Real w = sqrt(3);
parameter Real g = 12; 
parameter Real x0 = 2;
parameter Real y0 = -1;
Real x(start=x0);
Real y(start=y0);
equation
der(x) = y; 
der(y) = -w*w*x - g*y + 0.2*sin(5*time);

end laba_4_3;
