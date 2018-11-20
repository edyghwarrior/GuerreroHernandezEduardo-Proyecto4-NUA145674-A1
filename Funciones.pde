void principal(){
  video.loadPixels();
  
  if(p1==1){
  background(0);
  fill(0);
        rect(0,0,960,640);
        textFont(fuente);
        fill(255);
        textSize(25);
        text("  ¡Si te ries pierdes!",20,50);
        fill(220);
        text("  Instrucciones:",20,100);
        textSize(25);
        text("- Ya sea solo o acompado juega usando las teclas del 1 al 5 para",20,150);
        text("   intercambiar entre los efectos visuales. (Uno a la vez - ALPHA)",20,190);
        text("- Puedes usar la tecla f para pausar y reproducir, busca hacer",20,230);
        text("   muecas divertidas y hacer reir a tu compañero.",20,270);
        text("- Puedes usar ENTER para sacar un marco guia para tu rostro",20,310);
        text("- Presiona ENTER para continuar",20,450);
        scale(.25);
        image(foto,1700,1400);
  }
  
  if(p1==2){
  scale(2);
  opencv.loadImage(video);

  image(video, 0, 0 );
  
    noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  //println(faces.length);
   for (int i = 0; i < faces.length; i++) {
  
  if(t5==1){
  scale(.25);
  translate(340,200);
  image(lentes,faces[i].x,faces[i].y);
  }
}

  if(y==1){
  noFill();
  rect(93,66,140,150);
  }
  
  if(t==1 && faces.length==1){
  t2=0;
  t3=0;
  pset1();
  }
  
  if(t2==1 && faces.length==1){
  t=0;
  t3=0;
  pset2();
  }
  
  if(t3==1 && faces.length==1){
  t=0;
  t2=0;
  pset3();
  }
  
  if(t4==1 && faces.length==1){
  t=0;
  t2=0;
  t3=0;
  t5=0;
  pset4();
  }
  
  if(t5==1 && faces.length==1){
  y=0;
  t=0;
  t2=0;
  t3=0;
  t4=0;
  pset5();
  }
  }
   
}

void keyPressed(){
  
  if(key==ENTER && p1==1){
  p1=2;
  }
  
  if(key==ENTER && y==0){
  y=1;
  }
  else if(key==ENTER && y==1){
  y=0;
  }
  if(key=='1' && t==0){
  t=1;
  }
  else if(key=='1' && t==1){
  t=0;
  }
  if(key=='2' && t2==0){
  t2=1;
  }
  else if(key=='2' && t2==1){
  t2=0;
  }
  if(key=='3' && t3==0){
  t3=1;
  }
  else if(key=='3' && t3==1){
  t3=0;
  }
  if(key=='4' && t4==0){
  t4=1;
  }
  else if(key=='4' && t4==1){
  t4=0;
  }
  if(key=='5' && t5==0){
  t5=1;
  }
  else if(key=='5' && t5==1){
  t5=0;
  }
  if(key=='f' && p1==2){
  p1=3;
  }
  else if(key=='f' && p1==3){
  p1=2;
  }
  else if(key=='x'){
  saveFrame("foto_yay.png");
  }
}

void pset1(){
  scale(2);
  translate(-110,-68);
  pushMatrix();
  for(int k=340/2; k<430/2; k+=paso){
  for(int j=220/2; j<270/2; j+=paso){
   color c= video.get(k,j);
   fill(c);
   noStroke();
   rect(k,j,1,1);
 }
 }
 popMatrix();

}


void pset2(){
scale(2);
  translate(-74,-90);
  pushMatrix();
  for(int k=240/2; k<380/2; k+=paso){
  for(int j=340/2; j<430/2; j+=paso){
   color c= video.get(k,j);
   fill(c);
   noStroke();
   rect(k,j,1,1);
 }
 }
 popMatrix();
}

void pset3(){
  scale(2);
  translate(-70,-68);
  pushMatrix();
  for(int k=230/2; k<320/2; k+=paso){
  for(int j=220/2; j<270/2; j+=paso){
   color c= video.get(k,j);
   fill(c);
   noStroke();
   rect(k,j,1,1);
 }
 }
 popMatrix();
  
  
  translate(-20,0);
  pushMatrix();
  for(int k=340/2; k<410/2; k+=paso){
  for(int j=220/2; j<270/2; j+=paso){
   color c= video.get(k,j);
   fill(c);
   noStroke();
   rect(k,j,1,1);
 }
 }
 popMatrix();
}

void pset4(){
    scale(1,2.5);
  translate(0,-55);
  pushMatrix();
  for(int k=210/2; k<470/2; k+=paso){
  for(int j=80/2; j<200/2; j+=paso){
   color c= video.get(k,j);
   fill(c);
   noStroke();
   rect(k,j,1,1);
 }
 }
 popMatrix();

}
void pset5(){}
 
   

//  scale(2);
//  translate(-95,-59);
//  pushMatrix();
//  for(int i=300/2; i<385/2;i+=paso){
//  for(int j=190/2; j<240/2; j+=paso){
//   color c= video.get(i,j);
//   fill(c);
//   noStroke();
//   rect(i,j,1,1);
// }
// }
// popMatrix();
//}


void captureEvent(Capture c) {
  c.read();
}

//void mousePressed(){
//  if(mouseX >= faces[i].x)
//}
