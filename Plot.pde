void dot_plot() {
  x = x_value(t);
  y = y_value(t);
  point(x, y);

  t += 0.01;
}

void continuous_plot() {
  float oldX = x;
  float oldY = y;
  x = x_value(t);
  y = y_value(t);
  
  line(x, y, oldX, oldY);
  t += 0.02;
}
