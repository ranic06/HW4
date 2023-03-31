void drawStartButton() {
  fill(255);
  rectMode(CENTER);
  rect(width/2, height/2, 200, 100);
  fill(0);
  textAlign(CENTER, CENTER);
  text("Start", width/2, height/2);

  textAlign(RIGHT, TOP);
  text("Score: " + score, width-10, 10);
}

void mousePressed() {
  if (!gameStarted && mouseX > width/2-50 && mouseX < width/2+50 && mouseY > height/2-25 && mouseY < height/2+25) {
    gameStarted = true;
  }
}
