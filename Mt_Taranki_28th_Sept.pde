import processing.pdf.*;
PShape s;  // The PShape object

void setup() {
 beginRecord(PDF, "28th_Sept_Output.pdf");
  size(2550, 1000);
  //fullScreen();
  s = createShape();
  s.beginShape();
  s.noFill();
  s.vertex(90,  60);
  s.vertex(100, 120);
  s.vertex(110, 160);
  s.vertex(120, 200);
  s.vertex(130, 230);  
  s.vertex(140, 270);
  s.vertex(150, 300);
  s.vertex(160, 320);
  s.vertex(170, 340);
  s.vertex(180, 360);
  s.vertex(190, 395);
  s.vertex(210, 410);
  s.vertex(220, 430);
  s.vertex(230, 450);
  s.vertex(240, 460);
  s.vertex(251, 470);
  s.vertex(240, 490);
  s.vertex(230, 505);
  s.vertex(220, 520);
  s.vertex(210, 530);
  s.vertex(200, 550);
  s.vertex(190, 570);
  s.vertex(180, 590);
  s.vertex(170, 610);
  s.vertex(160, 625);
  s.vertex(150, 650);
  s.vertex(140, 685);
  s.vertex(130, 720);
  s.vertex(120, 790);
  s.vertex(100, 835);
  s.vertex(90,  915);
  
 
  
  s.endShape(OPEN);
}

void draw() {
  shape(s);
 endRecord();
}
