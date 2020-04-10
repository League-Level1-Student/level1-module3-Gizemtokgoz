int x = 100;
int y = 400;

int px = 300;
int py = 1;
int upperPipeHeight = 350;
int lowerPipeHeight = 700;
int lowerY = 700;

int pipeGap = 250;
int gravity = 4;
int birdYVelocity = 100;

void setup() {
  size(1000, 1000);
}

void draw() {
  background(#B7DBFF);
  fill(#FFE78E);
  stroke(#FFE06F);
  ellipse(x, y, 50, 50);
  fill(#9ABC9A);
  rect(px, py, 40, upperPipeHeight);
  rect(px, lowerY, 40, lowerPipeHeight);
  
  px -= 2;
  y += gravity;
  
  intersectsPipes();
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
