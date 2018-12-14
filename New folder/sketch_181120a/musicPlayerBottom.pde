Boolean playButton = false;

void musicPlayerBottom() {  
  
  //play-plause
  if (mouseX>225 && mouseX<243 && mouseY>487 && mouseY<515);
  if (playButton == true) {
    playButton=false;
    fill(blue);
    triangle(225, 487, 225, 515, 251, 500);
  } else {
    playButton=true;

    fill(pink);
    triangle(225, 487, 225, 515, 251, 500);
    {
    }
  }
}
