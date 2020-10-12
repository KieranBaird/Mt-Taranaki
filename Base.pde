import processing.pdf.*;
PShape s;

void setup() {
  beginRecord(PDF, "Base.pdf");
  size (900,1400);
  s = createShape ();
  s.beginShape();
  s.vertex(0,0);
  s.vertex(75,0);
  s.vertex(75,1322);
  s.vertex(113,1322);
  s.vertex(113,0);
  s.vertex(189,0);
  s.vertex(189,1390);
  s.vertex(0,1390);
  s.endShape(CLOSE);
}

void draw() {
  shape(s);
  
  rect(200,0,189,1390);
  rect(400,0,189,1320);
  rect(600,0,189,1320);
  
  endRecord();
  
}
