model Lab5
  parameter Real a = 0.19;
  parameter Real b = 0.026;
  parameter Real c = 0.18;
  parameter Real d = 0.032;
  parameter Real x0 = 3;
  parameter Real y0 = 8;
  Real x(start = x0);
  Real y(start = y0);
  parameter Real stat_x = c/d;
  parameter Real stat_y= a/b;
equation
  der(x) = -a*x + b*x*y;
  der(y) = c*y - d*x*y;
end Lab5;
