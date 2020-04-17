int x = 100;
int y = 400;

int px = 300;
int py = 1;
int upperPipeHeight = 350;
int lowerPipeHeight = 700;
int lowerY = 700;

int score = 0;
int pipeGap = 250;
int gravity = 4;
int birdYVelocity = 100;

void setup() {
  size(1000, 1000);
}

void draw() {
  
  if (intersectsPipes() == true) {
  fill(#E07677);
  textSize(50);
  text("game over!", 400, 500);
  score = 0;
  return;
  }
  
  if (y > 900) {
  fill(#E07677);
  textSize(50);
  text("game over!", 400, 500);
  score = 0;
  return;
  }
  
  if (x >= px && x <px+4) {
  score += 1;
  }
  
  background(#B7DBFF);
  fill(#7AA57A);
  stroke(#7AA57A);
  rect(0, 900, 1000, 100);
  fill(#FFE78E);
  stroke(#C0C6C0);
  ellipse(x, y, 50, 50);
  fill(#9ABC9A);
  stroke(#9ABC9A);
  rect(px, py, 40, upperPipeHeight);
  rect(px, lowerY, 40, lowerPipeHeight);
  
  fill(#BFBFBF);
  textSize(50);
  text("score: " + score, 400, 100);
  
  px -= 4;
  y += gravity;
  
  teleportPipes();
}

void mousePressed() {
  y -= birdYVelocity;
}

void teleportPipes() {
  if (px<0) {
    px = 350;
    upperPipeHeight = (int) random(200, 600);
    lowerPipeHeight = (lowerY + upperPipeHeight);
    lowerY = upperPipeHeight + pipeGap;
  }
}

boolean intersectsPipes() { 
         if (y < upperPipeHeight && x > px && x < (px+40)){
            return true; }
        else if (y > lowerY && x > px && x < (px+40)) {
            return true; }
        else { return false; }
}
