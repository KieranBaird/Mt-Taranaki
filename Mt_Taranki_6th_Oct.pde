import processing.pdf.*;
PShape m;  // Mountain
PShape b;  // Brames Fall Route
PShape f;  // Fanthams Peak Track
PShape s;  // Southern Summit Track
PShape u;  // Upper Lake Drive Track
PShape h;  // Hut
PShape r;  // Roof
PShape o; // Mountain offset
PShape ob; //Brames Fall offset
PShape os; // Southern Simmit Offset
PShape ou; // Upper Lake Offset

PFont font;
Table Altitude;
Table BFR;
Table FPT;
Table SS;
Table ULDT;

void setup() {
  Altitude = loadTable("data.csv", "header");
  println(Altitude.getInt(0, "Altitude"));
  println(Altitude.getInt(0, "Distance"));
  
  BFR = loadTable("Brames Fall Route.csv", "header");
  println(Altitude.getInt(0, "Altitude"));
  println(Altitude.getInt(0, "Distance"));
  
  FPT = loadTable("Fanthams Peak Track.csv", "header");
  println(Altitude.getInt(0, "Altitude"));
  println(Altitude.getInt(0, "Distance"));
  
  SS = loadTable("Southern Summit.csv", "header");
  println(Altitude.getInt(0, "Altitude"));
  println(Altitude.getInt(0, "Distance"));

  ULDT = loadTable("Upper Lake Drive Track.csv", "header");
  println(Altitude.getInt(0, "Altitude"));
  println(Altitude.getInt(0, "Distance"));
  
  
  beginRecord(PDF, "6th_Oct_Output.pdf");

  size(995, 380);
  background(255);
  //fullScreen();
  m = createShape();
  m.beginShape();
  m.noFill();
  for(int i = 0; i < Altitude.getRowCount() ; i++){
  m.vertex(Altitude.getInt(i, "Distance")/10,300-Altitude.getInt(i, "Altitude")/10);
  }
  m.endShape(OPEN);
  
  o = createShape();
  o.beginShape();
  o.fill(255);
  //o.noFill();
  o.stroke(255);
  o.strokeWeight(40);
  for(int i = 0; i < Altitude.getRowCount() ; i++){
  o.vertex(Altitude.getInt(i, "Distance")/10,300-Altitude.getInt(i, "Altitude")/10);
  }
  o.endShape(CLOSE);
  
  
  b = createShape();
  b.beginShape();
  b.noFill();
  for(int i = 0; i < BFR.getRowCount() ; i++){
  b.vertex(BFR.getInt(i, "Distance")/10,300-BFR.getInt(i, "Altitude")/10);
  }
  b.endShape(OPEN);
  
  ob = createShape();
  ob.beginShape();
  ob.noFill();
  ob.stroke(255);
  ob.strokeWeight(10);
  for(int i = 0; i < BFR.getRowCount() ; i++){
  ob.vertex(BFR.getInt(i, "Distance")/10,300-BFR.getInt(i, "Altitude")/10);
  }
  ob.endShape(OPEN);
  
  f = createShape();
  f.beginShape();
  f.noFill();
  for(int i = 0; i < FPT.getRowCount() ; i++){
  f.vertex(FPT.getInt(i, "Distance")/10,300-FPT.getInt(i, "Altitude")/10);
  }
  f.endShape(OPEN);
 
  s = createShape();
  s.beginShape();
  s.noFill();
  for(int i = 0; i < SS.getRowCount() ; i++){
  s.vertex(SS.getInt(i, "Distance")/10,300-SS.getInt(i, "Altitude")/10);
  }
  s.endShape(OPEN);
  
  os = createShape();
  os.beginShape();
  os.noFill();
  os.stroke(255);
  os.strokeWeight(10);
  for(int i = 0; i < SS.getRowCount() ; i++){
  os.vertex(SS.getInt(i, "Distance")/10,300-SS.getInt(i, "Altitude")/10);
  }
  os.endShape(OPEN);
  
  u = createShape();
  u.beginShape();
  u.noFill();
  for(int i = 0; i < ULDT.getRowCount() ; i++){
  u.vertex(ULDT.getInt(i, "Distance")/10,300-ULDT.getInt(i, "Altitude")/10);
  }
  u.endShape(OPEN);
  
  ou = createShape();
  ou.beginShape();
  ou.noFill();
  ou.stroke(255);
  ou.strokeWeight(10);
  for(int i = 0; i < ULDT.getRowCount() ; i++){
  ou.vertex(ULDT.getInt(i, "Distance")/10,300-ULDT.getInt(i, "Altitude")/10);
  }
  ou.endShape(OPEN);
  
  r = createShape();
  r.beginShape();
  r.noFill();
  r.vertex(495,100);
  r.vertex(482.5,90);
  r.vertex(470,100);
  r.endShape(OPEN);
  
  h = createShape();
  h.beginShape();
  h.noFill();
  h.vertex(490,100);
  h.vertex(490,112);
  h.vertex(475,112);
  h.vertex(475,100);
  h.endShape(OPEN);
  

  
  
  for(int i = 0; i <7 ; i++){ line(0, 60+(i*20), 1000, 210+ (i*20));}
  
  for(int i = 0; i <9 ; i++){ line(0, 60-(i*20), 1000, 210-(i*20));
}


  stroke(255);
  strokeWeight(40);
  noFill();
  rect(10, 10, 975, 360, 30, 30, 0, 0);
  
  noStroke();
  fill(255);
  rect (0,210,995,210, 360,0,360,995);
  
  stroke(0);
  strokeWeight(1);
  noFill();
  rect(10, 10, 975, 360, 30, 30, 0, 0);
  }
 
void draw() {
 shape(o);
 shape(m);
 shape(ob);
 shape(b);
 shape(f);
 shape(os);
 shape(s);
 shape(ou);
 shape(u);
 shape(h);
 shape(r);
 
 fill(0);
    font = createFont("Signatrue", 22);
    textFont(font);
    textAlign(CENTER, CENTER);
    text("Mt", 725, 210);
    
    font = createFont("Signatrue", 22);
    textFont(font);
    textAlign(CENTER, CENTER);
    text("Taranaki", 800, 230); 
    
    font = createFont("Avenir-Book", 11);
    textFont(font);
    textAlign(CENTER,LEFT);
    text ("Syme Hut", 497,125);
  
 
 //rect (475,100,20,20);
 
 endRecord();
}
