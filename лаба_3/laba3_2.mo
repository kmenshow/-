model laba3_2
parameter Real a = 0.24;
parameter Real b = 0.75;
parameter Real c = 0.28;
parameter Real h = 0.18;
parameter Real x0 = 227000;
parameter Real y0 = 139000;
Real x(start=x0);
Real y(start=y0);
equation
der(x)=-a*x-b*y+sin(8*time)+1;
der(y)=-c*x*y-h*y+2*cos(time);
end laba3_2;
