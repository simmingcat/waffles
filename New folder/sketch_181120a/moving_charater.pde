float x =166 ;//body
float y =281 ;//body

float h = 253; //head y
float t = 193; //head x

float a = 179;//eye1 x
float b = 247;//eye2y

float g = 205;//eye2 x

float m = 179;//mouth point1 x
float n = 261;//mouth point1 y


 
float speed = 1000;
void MovingDraw(){
  fill(#B4ECFF);
   rect(159, 159, 190, 190, 7);
move();
  display();
  
}

 void move() {
  x = x + speed;      t = t + speed;    a = a + speed;   g = g + speed;
  if (x > 260) {      if(t > 260){      if(a > 260){      if(g> 260){
    x = 166;            t = 193;         a = 179;           g = 205;
     }
    }
    }
  }
 }
 
  void display(){
    fill(#FFFFFF);
  rect(x, y, 50, 67, 3);
  
   ellipse(t, h, 65, 65);
  
  
  line(285, 317, 303, 294);
 line(303, 294, 330, 294);
 
 line(235, 317, 212, 294);
 line(212, 294, 188, 294);
 
 ellipse(a, b, 10, 10);
 ellipse(g, b, 10, 10);
 line(m, n, 273, 268);

  
  

  }
