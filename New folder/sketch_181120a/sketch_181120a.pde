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
   songSetup();
  quitButtonSetup();
  musicPlayerGUI_Setup();
   size(500, 600);
}

void draw() {
  songDraw();
  quitButtonDraw();
  musicPlayerBottom();
}

void mouseClicked() { 
  quitButtonMouseClicked();
}
