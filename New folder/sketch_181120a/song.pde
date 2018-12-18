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
   
  stroke(25);

  //Draw the waveforms
  //The values returned by left.get() and right.get() will be between -1 and 1,
  //  so we need to scale them up to see the waveform
  //Note: that if the file is MONO, left.get() and right.get() will return the same value

  for (int i = 0; i < song[ currentSong].bufferSize() - 1; i++)
  {
    float x1 = map( i, 0, song[ currentSong].bufferSize(), 0, width );
    float x2 = map( i+1, 0, song[ currentSong].bufferSize(), 0, width );
    line( x1, 380 +  song[ currentSong].left.get(i)*10, x2, 380 +  song[currentSong].left.get(i+1)*10 );
  }

  //Draw a line to show where in the song playback is currently located
  float posx = map( song[ currentSong].position(), 380, song[ currentSong].length(), 10, width);
  stroke(0, 200, 0);
  ellipse(posx, 380, posx, 10);

  //Draw text depending on whether music is playing
  if ( song[ currentSong].isPlaying() ) {
  }
}
{
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
