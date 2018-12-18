//gloabal variable
color gray=#DEDEDE;
color lightGreen=#C3FFBF;
color white=#FFFFFF;
color lightPink=#FFC4E6;


color blue=#ADFFFE;
color pink=#FFA5D7;
color regularButton= blue;
color hoverOverBotton= pink;

void setup () {
    background(white);
     size(500, 600);
     //skipSetup();
   songSetup();
  quitButtonSetup();
  musicPlayerGUI_Setup();
  
}

void draw() {

  //skipDraw();
    MovingDraw();
    songDraw();
  quitButtonDraw();

}

void mouseClicked() { 
  quitButtonMouseClicked();
  musicPlayerBottom();
}
