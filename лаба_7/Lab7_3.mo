model Lab7_3
  // time [0:0.01:0.4]
  parameter Integer x0 = 22; // Начальное число знающих о товаре
  parameter Integer N = 3310; // максимальное число людей, которых может заинтересовать товар
  Real x(start=x0);
equation
  der(x) = (0.511*sin(time) + 0.311*sin(time)*x)*(N-x);

end Lab7_3;
