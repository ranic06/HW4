void collipse() {
  for (int i = 0; i < treeA.length; i++) {
    float distance1 = dist(x, y, treeA[i], treeB[i] + d * 9 / 10);
    float distance2 = dist(x, y, treeX[i], treeY[i] + d * 9 / 10);
    println("treeA[" + i + "]: " + distance1);
    println("treeX[" + i + "]: " + distance2);
    if (distance1 < d / 3 || distance2 < d / 3) {
      gameOver();
    }
  }
}

void gameOver() {
  state = 2;
  gameOver = true;
  background(255, 0, 0);
  textAlign(CENTER, CENTER);
  text("GAME OVER", width / 2, height / 2);
  text("Score: " + int(distanceTraveled), width / 2, (height + d) / 2);
  retry();
}

void retry() {
  fill(255);
  rectMode(CENTER);
  rect(width/2, (height/2)+300, 200, 50);
  fill(0);
  textSize(32);
  textAlign(CENTER, CENTER);
  text("Retry", width/2, height/2+300);
}
