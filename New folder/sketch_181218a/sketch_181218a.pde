color purple=(#8C14D8);
float x = 300;
float y = 200;

float speed = 1;

void setup() {
  size(500,600);
}

void draw() {
  background(255);
  move();
  display();
}

void move() {
      
  x = x + speed;
  if (x > 350) {
    x = 300;
    
  }
  }


void display() {
  fill(purple);
    rect(x, y, 50, 67, 3);
  
   ellipse(x, 254, 65, 65);
  
  
  
}
