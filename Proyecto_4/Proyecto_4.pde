import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;

PImage lentes;
PImage foto;
PFont fuente;

int paso=1; 
int y=1;
int py=0;
int t=0;
int t2=0;
int t3=0;
int t4=0;
int t5=0;
int p1=1;

void setup() {
  size(640, 480);
  
  lentes = loadImage("lentes.png");
  foto = loadImage("foto.png");
  fuente = loadFont("AdobeGurmukhi-Regular-60.vlw");
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  video.start();
}



void draw() {
  principal();
   
}
