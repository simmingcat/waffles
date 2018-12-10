//file/ sketch/ import library/ add libaray/ click minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//global variables
Minim minim;
AudioPlayer song1;

void setup(){
  //size():
  minim = new Minim(this);
  song1 = minim.loadFile("Maid with the Flaxen Hair.mp3");
  
  println("start of console");
  println("click the console to finish starting this program");
  println("press P to Play and Pause");
  
}

void draw(){
  
  
}

void mousePressed(){
  
}

void keyPressed(){
  
  if(key=='p' || key=='P'){    
    
  }
  
  
    if(key=='s' || key=='S'){
      if(song1.isPlaying() ) {
         song1.pause();
         song1.rewind();
      
    }else{//song is not playing
      song1.rewind();
    }
  }
}
    
    
    
    
    
    
    

  //song1.position()==song1.length(
 
  
  
  
  
  
  
  
  
  
