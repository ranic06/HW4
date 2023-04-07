void update() {
  y += ySpeed;
  ySpeed += gravity;

  if (y+d/2 > height) {
    y = height - d/2;
    ySpeed = 0;
    nJump = 0;
  }
}

void gio() {
  e++;

  //leg
  strokeWeight(1);
  stroke(0);
  fill(255);
  quad(x-d*1/20, y+d*2/10, x-d*3/10, y+d*2/10, x-d*3/10, y+d*5/10, x-d*1/10, y+d*5/10);
  quad(x+d*1/20, y+d*2/10, x+d*3/10, y+d*2/10, x+d*3/10, y+d*5/10, x+d*1/10, y+d*5/10);

  //body
  stroke(0);
  fill(255);
  ellipse(x, y, d, d*4/5);
  ellipse(x, y-d/2, d*3/5, d*1/2);
  ellipse(x, y-d, d*3/4, d*7/8);

  //nose
  fill(255, 127, 0);
  arc(x+d/5, y-d, d/8, d/8, PI/2, PI*3/2);
  triangle(x+d/5, y-d*34/32, x+d/5, y-d*30/32, x+d*2/3, y-d);
  stroke(255, 127, 0);
  line(x+d/5, y-d*34/32, x+d/5, y-d*30/32);
  stroke(255, 0, 0);
  line(x+d*2/7, y-d*31/32, x+d*2/7, y-d*33/32);
  line(x+d*3/14, y-d*30/32, x+d*3/14, y-d*32/32);
  line(x+d*6/14, y-d*31/32, x+d*6/14, y-d*33/32);
  line(x+d*5/14, y-d*31/32, x+d*5/14, y-d*32/32);

  //eyes & blink
  if ((e%120)<60) {
    fill(255);
    stroke(0);
    ellipse(x+d*7/24, y-d*37/32, d/7, d/6);
    ellipse(x+d/8, y-d*37/32, d/7, d/6);
    fill(0);
    ellipse(x+d*7/24, y-d*36/32, d/10, d/10);
    ellipse(x+d/8, y-d*36/32, d/10, d/10);
    fill(255);
    circle(x+d*15/48, y-d*36/32, d/30);
    circle(x+d*7/48, y-d*36/32, d/30);
  } else {
    stroke(0);
    strokeWeight(2);
    line(x+d*6/24, y-d*36/32, x+d*8/24, y-d*36/32);
    line(x+d*2/24, y-d*36/32, x+d*4/24, y-d*36/32);
  }

  //eyelashs
  strokeWeight(3);
  stroke(0);
  noFill();
  arc(x+d*7/24, y-d*37/32, d/7, d/6, PI, PI*2);
  arc(x+d/8, y-d*37/32, d/7, d/6, PI, PI*2);

  //eyebrows
  arc(x+d/8, y-d*39/32, d/6, d/7, PI, PI*5/3);
  arc(x+d*7/24, y-d*39/32, d/6, d/7, PI*8/6, PI*11/6);

  //mouse
  strokeWeight(1);
  fill(62, 197, 241);
  stroke(255);
  arc(x+d/6, y-d*5/6, d/3, d/7, -PI*2/18, PI*19/18);
  fill(255);
  stroke(0);
  quad(x+d/6, y-d*9/12, x+d*3/12, y-d*9/12, x+d*3/12, y-d*5/6, x+d/6, y-d*5/6);
  line(x+d*5/24, y-d*9/12, x+d*5/24, y-d*39/48);

  //hand
  strokeWeight(10);
  stroke(150, 75, 0);
  line(x-d/16, y-d/2, x-d/5, y);
  line(x+d*7/24, y-d/2, x+d*5/8, y);

  //hair
  strokeWeight(5);
  stroke(150, 75, 0);
  line(x, y-d*13/8, x, y-d*11/8);
  line(x-d/16, y-d*13/8, x, y-d*11/8 );
  line(x+d/16, y-d*13/8, x, y-d*11/8);

  //buttons
  strokeWeight(3);
  fill(0);
  stroke(0);
  circle(x+d/8, y-d/2, d/10);
  circle(x+d/5, y-d/8, d/10);
  circle(x+d/4, y+d/7, d/10);
}
