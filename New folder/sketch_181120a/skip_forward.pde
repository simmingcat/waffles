import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
AudioPlayer song1;
int numberOfSong1 = 9;
AudioPlayer[]Song = new AudioPlayer[numberOfSong1];
int currentSong1 = numberOfSong1 - numberOfSong1;


void skipSetup() {
  //size(512, 200, P3D); //Console output, not visual data, text promptos only, not complete yet
 rect(160, 353, 189, 13);
   minim = new Minim(this);
  song[0] = minim.loadFile("Showtek ft. We Are Loud & Sonny Wilson - Booyah (Official Music Video).mp3");
  song[1] = minim.loadFile("Avicii - Without You ft. Sandro Cavazza [Lyric Video].mp3");
  song[2] = minim.loadFile("TheFatRat - Never Be Alone (Tasty Release).mp3");
  song[3] = minim.loadFile("Kalimba.mp3");
  song[4] = minim.loadFile("Sleep Away.mp3");
  song[5] = minim.loadFile("Maid with the Flaxen Hair.mp3");
  song[6] = minim.loadFile("Ghost_Town.mp3");
  song[7] = minim.loadFile("Firefly (1).mp3");
  song[8] = minim.loadFile("Plex.mp3");

  println("Start of Console");
  println("Click the Console to Finish Starting this program");
  println("Press p or P to Play and Pause");
  println("Press f or F to skip by 1000 milliseconds, or 1 second");
  println("Press r or R to skip by 1000 milliseconds, or 1 second");
}

void skipDraw() {
  background(0);
  stroke(255);

  for (int i = 0; i < song1.bufferSize() - 1; i++) {
    line(i, 50  + song1.left.get(i)*50, i+1, 50  + song1.left.get(i+1)*50);
  }

  float posx = map(song1.position(), 0, song1.length(), 0, width);
  stroke(0, 200, 0);
  line(posx, 0, posx, height);

  stroke(255);
  text("Press f to skip forward and r to skip backward.", 10, 20);
}

void skipKeyPressed() {
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
  
  if ( key == 'f' || key == 'F') song1.skip(1000); // skip forward 1 second (1000 milliseconds), single IF Line
    if ( key == 'r' || key == 'R') song1.skip(-1000); // skip backward 1 second (1000 milliseconds), single IF Line
}
