Boolean playButton = false;

void musicPlayerBottom() {

  //play-plause
  if (mouseX>225 && mouseX<243 && mouseY>487 && mouseY<515);
  {
  }
  if ( song[currentSong].isPlaying() ) {
     fill(blue);
  triangle(225, 487, 225, 515, 251, 500);
    song[currentSong].pause();
  } else if ( song[currentSong].position() == song[currentSong].length() ) {
    song[currentSong].rewind();
    song[currentSong].play();
  } else {
     fill(pink);
  triangle(225, 487, 225, 515, 251, 500);
    song[currentSong].play();
  }
}
