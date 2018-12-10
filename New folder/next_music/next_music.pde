//file/ sketch/ import library/ add libaray/ click minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//global variables
Minim minim;
int numberOfSong = 4;
AudioPlayer[] song = new AudioPlayer[numberOfSong];

void setup(){
  //size():
  minim = new Minim(this);
  song[0] = minim.loadFile("Maid with the Flaxen Hair.mp3");
  song[1] = minim.loadFile("Avicii - Without You ft. Sandro Cavazza [Lyric Video].mp3");
  song[2] = minim.loadFile("TheFatRat - Never Be Alone (Tasty Release).mp3");
  song[3] = minim.loadFile("Kalimba.mp3");
  
  println("start of console");
  println("click the console to finish starting this program");
  println("press P to Play and Pause");
  
}

void draw(){
  
  
}

void mousePressed(){
  
}

void keyPressed(){
  int currentSong = 2;
  if(song[currentSong].isPlaying()){
  if (key == 'n' || key == 'N') {
   }
}
  
   if (key == 'p' || key == 'P') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
}
