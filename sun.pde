void sun() {
  // sun
  fill(255, 255, 0);
  noStroke();
  ellipse(width*9/10, height/5, 150, 150);
  stroke(255, 127, 0);
  strokeWeight(5);
  for (int i = 0; i < 16; i++) {
    float angle = map(i, 0, 16, 0, TWO_PI);
    float x1 = width*9/10+ 80*cos(angle);
    float y1 = height/5 + 80*sin(angle);
    float x2 = width*9/10 + 150*cos(angle);
    float y2 = height/5 + 150*sin(angle);
    line(x1, y1, x2, y2);
  }
}
