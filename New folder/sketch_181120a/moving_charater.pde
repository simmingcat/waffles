float x =159 ;//body
float y =282 ;//body

float h=

float speed = 1;
void MovingDraw();
move();
  display();
  
}

 void move() {
  x = x + speed;
  if (x >300) {
    x = 159;
  }
}
  
  void display(){
    fill(#FFFFFF);
  rect(x, y, 50, 67, 3);
  
   ellipse(260, 254, 65, 65);
  
  
  line(285, 317, 303, 294);
 line(303, 294, 330, 294);
 
 line(235, 317, 212, 294);
 line(212, 294, 188, 294);
 
 ellipse(245, 246, 10, 10);
 ellipse(275, 246, 10, 10);
 line(246, 262, 273, 268);

  
  

  }
