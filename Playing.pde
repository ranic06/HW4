void playing() {
  background(0);

  //backgroundDevide
  rectMode(0);
  noStroke();
  int numRects = 5;
  int rectHeight = height / numRects;
  for (int i = 0; i < numRects; i++) {
    if (i < 3) {
      fill(174, 211, 236);
    } else {
      fill(128, 208, 56);
    }
    rect(0, i * rectHeight, width, rectHeight);
  }

  //score text
  distanceTraveled += abs(treeSpeed);
  fill(0);
  textSize(32);
  textAlign(LEFT);
  text("Score:" + int(distanceTraveled), 20, 40);

  //snow
  for (int i=0; i<number; i++) {
    w[i] += speedY[i];
    shape(snow, q[i], w[i], r[i], r[i]);
    if (w[i]>height) w[i] = 0;
  }

  update();
  gio();
  trees(treeX, treeY, treeSpeed, d/4, d*9/10);
  trees(treeA, treeB, treeSpeed, d/4, d*3/2);
  sun();
  cloud();
  collipse();
}
