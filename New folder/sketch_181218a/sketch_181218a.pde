color c = color(0);
float x = 250;
float y = 100;
float speed = 4;

void setup() {
  size(500,200);
}

void draw() {
  background(255);
  move();
  display();
}

void move() {
  x = x + speed;
  if (x > 400) {
    x = 250;
  }
}

void display() {
  fill(c);
  ellipse(x,y,10,10);
  
}
