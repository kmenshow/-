model Lab7_1
  // time [0:0.01:15]
  parameter Integer x0 = 22; // Начальное число знающих о товаре
  parameter Integer N = 3310; // максимальное число людей, которых может заинтересовать товар
  Real x(start=x0);
equation
  der(x) = (0.211 + 0.000011*x)*(N-x);

end Lab7_1;
