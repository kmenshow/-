model laba3_1
parameter Real a = 0.405;
parameter Real b = 0.7;
parameter Real c = 0.68;
parameter Real h = 0.37;
parameter Real x0 = 27300;
parameter Real y0 = 20400;
Real x(start=x0);
Real y(start=y0);
equation
der(x)=-a*x-b*y+sin(time+8)+1;
der(y)=-c*x-h*y+cos(time+6)+1;
end laba3_1;
