int x = 400;
int y = 550;

class car {
  int xcar;
  int ycar;
  int size;
  int speed;

  car (int xc, int yc, int s, int sp) {
    xcar = xc;
    size = s;
    ycar = yc;
    speed = sp;
  }

  int getX () {
    return xcar;
  }

  int getY () {
    return ycar;
  }

  int getSize () {
    return size;
  }

  void display() {
    fill(#EEF091);
    rect(xcar, ycar, size, 50);
  }

  void moveLeft() {
    xcar -= speed;
    if (xcar < -80) {
      int randNum = (int)random (8);
      speed=randNum+4;
      xcar = 800;
    }
  }

  void moveRight() {
    xcar += speed;
    if (xcar > 880) {
      int randNum = (int)random (8);
      speed=randNum+4;
      xcar = 0;
    }
  }
}

boolean intersects(car car) {
  if ((y > car.getY() && y < car.getY()+50) &&
    (x > car.getX() && x < car.getX()+car.getSize())) {
    return true;
  } else {
    return false;
  }
}

  car racecar1 = new car(600, 400, 100, 5);
  car racecar2 = new car(100, 200, 100, 7);
  car racecar3 = new car(600, 100, 100, 6);
  car racecar4 = new car(100, 300, 100, 8);

  void setup() {
    size(800, 600);
  }

  void draw() {
    background(#C1C1C1);
    fill(#9AF2BC);
    ellipse(x, y, 50, 50);

    racecar1.display();
    racecar1.moveLeft();
    if (intersects(racecar1)==true) {
      x=400;
      y=550;
    }

    racecar2.display();
    racecar2.moveRight();
    if (intersects(racecar2)==true) {
      x=400;
      y=550;
    }

    racecar3.display();
    racecar3.moveLeft();
    if (intersects(racecar3)==true) {
      x=400;
      y=550;
    }
    
    racecar4.display();
    racecar4.moveRight();
    if (intersects(racecar4)==true) {
      x=400;
      y=550;
    }
    
    if (y<50) {
      textSize(35);
      text ("good job! you won", 250, 300);
    }

    if (y > 600) {
      x = 400;
      y = 550;
    }

    if (x < 0) {
      x = 400;
      y = 550;
    }

    if (x > 800) {
      x = 400;
      y = 550;
    }
  }

  void keyPressed()
  {
    if (key == CODED) {
      if (keyCode == UP)
      {
        y -= 8;
      } else if (keyCode == DOWN)
      {
        y += 8;
      } else if (keyCode == RIGHT)
      {
        x += 8;
      } else if (keyCode == LEFT)
      {
        x -= 8;
      }
    }
  }
