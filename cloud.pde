void cloud() { // clouds
  noStroke();
  fill(255);
  drawCloud(100, 190);
  drawCloud(225, 75);
  drawCloud(350, 150);
  drawCloud(525, 200);
  drawCloud(650, 90);
  drawCloud(775, 175);
  drawCloud(950, 125);
  drawCloud(1100, 200);
}

void drawCloud(int x, int y) {
  noStroke();
  fill(255);
  ellipse(x, y, 50, 50);
  ellipse(x+25, y, 50, 50);
  ellipse(x-25, y, 50, 50);
  ellipse(x+10, y-25, 50, 50);
  ellipse(x-10, y-25, 50, 50);
}
