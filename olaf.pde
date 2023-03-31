PShape snow;

int number = 100;
float q[] = new float[number];
float w[] = new float[number];
float speedY[] = new float[number];
float r[] = new float[number];
float x = 200;
float y = 800;
int d = 120;
int e;
float jumpSpeed = -20;
float gravity = 1.2;
float ySpeed = 0;
float[] treeX = {500, 1200};
float[] treeY = {700, 700};
float[] treeA = {800, 1500};
float[] treeB = {650, 650};
float treeSpeed = -7 ;
int nJump = 0;
int distanceTraveled = 0;
boolean gameStarted = false;
int score = 0;

void setup() {
  size(1500, 800);

  //snow
  smooth();
  shapeMode(CENTER);
  snow = loadShape("snowFlake0.svg");
  imageMode(CENTER);
  smooth();

  for (int i=0; i<number; i++) {
    q[i] = random(0, width);
    w[i] = random(0, height);
    speedY[i] = random(0.1, 2);
    r[i] = random(20, 50);
  }
  drawStartButton();
}

void draw() {
  background(174, 211, 236);

  //game start&finish
  if (!gameStarted) {
    drawStartButton();
    return;
  } else {

    //background devide
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
    trees();
    sun();
    cloud();

    //collipse
    float distance = dist(x + d * 5/8, y, treeA[0], treeB[0] + d * 9/10);
    if (distance < d/4) {
      background(255, 0, 0);
      textAlign(RIGHT, TOP);
      text("GAME OVER", width/2, height/2);
      text("Score: " + int(distanceTraveled), width/2, (height+d)/2);
    }
  }
}

void keyPressed() {
  if (key == ' ') {
    if (nJump < 2) {
      nJump++;
      ySpeed = jumpSpeed;
    }
  }
}
