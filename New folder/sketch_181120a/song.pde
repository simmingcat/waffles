//file/ sketch/ import library/ add libaray/ click minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


//global variables
Minim  minim;
int numberOfSong = 9;
AudioPlayer[] song = new AudioPlayer[numberOfSong];
int currentSong = numberOfSong - numberOfSong;

void songSetup() {
  //size():
  minim = new Minim(this);
  song[0] = minim.loadFile("Showtek ft. We Are Loud & Sonny Wilson - Booyah (Official Music Video).mp3", 575);
  song[1] = minim.loadFile("Avicii - Without You ft. Sandro Cavazza [Lyric Video].mp3", 575);
  song[2] = minim.loadFile("TheFatRat - Never Be Alone (Tasty Release).mp3", 575);
  song[3] = minim.loadFile("Kalimba.mp3", 575);
  song[4] = minim.loadFile("Sleep Away.mp3", 575);
  song[5] = minim.loadFile("Maid with the Flaxen Hair.mp3", 575);
  song[6] = minim.loadFile("Ghost_Town.mp3", 575);
  song[7] = minim.loadFile("Firefly (1).mp3", 575);
  song[8] = minim.loadFile("Plex.mp3", 575);
   

  println("start of console");
  println("click the console to finish starting this program");
  println("press P to Play and Pause");
}
void songDraw() {
 
}
void keyPressed() {
  // skipKeyPressed() ;
  if (key == 'n' || key == 'N') {
    if (song[currentSong].isPlaying()) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if (currentSong == numberOfSong - 1) {
        currentSong = numberOfSong - numberOfSong;
      } else {  
        currentSong = currentSong +1;
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      currentSong = currentSong +1;
      if (currentSong == numberOfSong - 1) {
        currentSong = numberOfSong - numberOfSong;
      } else {  
        currentSong = currentSong +1;
      }
    }
  }

  if (key == 'p' || key == 'P') {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].play();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].pause();
    }
  }
}
