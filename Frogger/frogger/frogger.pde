int x = 400;
int y = 550;

void setup() {
  size(800, 600);
}

void draw() {
  background(#C1C1C1);
  fill(#9AF2BC);
  ellipse(x, y, 50, 50);
  
  if (y < 0) {
    x = 400;
    y = 550;
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
    if(key == CODED){
        if(keyCode == UP)
        {
            y -= 5;
        }
        else if(keyCode == DOWN)
        {
            y += 5;
        }
        else if(keyCode == RIGHT)
        {
            x += 5;
        }
        else if(keyCode == LEFT)
        {
            x -= 5;
        }
    }
}
