import oscP5.*;
OscP5 oscP5;
PImage img1;

ArrayList<Flower> flowers = new ArrayList<Flower>();


// num faces found
int found;

// pose
float poseScale;
PVector posePosition = new PVector();
PVector poseOrientation = new PVector();

// gesture
float mouthHeight;
float mouthWidth;
float eyeLeft;
float eyeRight;
float eyebrowLeft;
float eyebrowRight;
float jaw;
float nostrils;

void setup() {
  size(640, 480);
  frameRate(30);

  oscP5 = new OscP5(this, 8338);
  oscP5.plug(this, "found", "/found");
  oscP5.plug(this, "poseScale", "/pose/scale");
  oscP5.plug(this, "posePosition", "/pose/position");
  oscP5.plug(this, "poseOrientation", "/pose/orientation");
  oscP5.plug(this, "mouthWidthReceived", "/gesture/mouth/width");
  oscP5.plug(this, "mouthHeightReceived", "/gesture/mouth/height");
  oscP5.plug(this, "eyeLeftReceived", "/gesture/eye/left");
  oscP5.plug(this, "eyeRightReceived", "/gesture/eye/right");
  oscP5.plug(this, "eyebrowLeftReceived", "/gesture/eyebrow/left");
  oscP5.plug(this, "eyebrowRightReceived", "/gesture/eyebrow/right");
  oscP5.plug(this, "jawReceived", "/gesture/jaw");
  oscP5.plug(this, "nostrilsReceived", "/gesture/nostrils");
  
  Flower f = new Flower();
  flowers.add(f);
  
}


void drawFlower()
{
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  fill(277,0,22);
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  fill(239,119,25);
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  fill(253,219,0);
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  fill(255,234,0);
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  fill(170,201,19);
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  fill(1,148,67);
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  fill(1,153,140);
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  fill(9,155,215);
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  fill(277,0,22);
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  fill(2,81,158);
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  fill(20,41,120);
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  fill(180,16,128);
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  fill(277,0,22);
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  fill(239,119,25);
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  fill(253,219,0);
  rotate(radians(30));
  ellipse(20, 0, 60, 30);
  rotate(radians(30));
  fill(255,234,0);
  ellipse(20, 0, 60, 30);
  rotate(radians(30));
  fill(170,201,19);
  ellipse(20, 0, 60, 30);
  rotate(radians(30));
  fill(1,148,67);
  ellipse(20, 0, 60, 30);
  rotate(radians(30));
  fill(1,153,140);
  ellipse(20, 0, 60, 30);
  rotate(radians(30));
  fill(9,155,215);
  ellipse(20, 0, 60, 30);
  rotate(radians(30));
  fill(277,0,22);
  ellipse(20, 0, 60, 30);
  rotate(radians(30));
    
}


void draw() {  
PImage img;
img = loadImage("5.jpg");
background(img);
  
  if(found > -1) {
    translate(posePosition.x, posePosition.y);
    scale(poseScale);
 
 //petal
for (int i=0; i<50; i++);
{
    rotate(radians(30));
    ellipse(20, 0, 60, 30);
    stroke(0);
}

drawFlower();

//face
     stroke(0);
     fill(255);
     ellipse(0, 0, 80, 80);
     
 //eyes
    stroke(0);
    fill(0);
    ellipse(-15, eyeLeft * -7, 7, 7);
    ellipse(15, eyeRight * -7, 7, 7);
    
    stroke(0);
    fill(255);
    ellipse(-15, eyeLeft * -7, 2, 2);
    ellipse(15, eyeRight * -7, 2, 2);
    
 //blush
    noStroke();
    fill(217,145,163);
    ellipse(-20, eyeLeft * -5, 5, 5);
    ellipse(20, eyeRight * -5, 5, 5);
    
 //mouth
    stroke(0);
    fill(225,4,21);
    ellipse(0, 10, mouthWidth* 3, mouthHeight * 10);
    
 /////////////////second flower
  //petal2
for (int i=0; i<50; i++);
{
translate(40, 40);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(277,0,22);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(239,119,25);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(253,219,0);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(255,234,0);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(170,201,19);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(1,148,67);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(1,153,140);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(9,155,215);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(277,0,22);
 }
 
 //face2
 translate(-40, -40);
    stroke(0);
    fill(255);
    ellipse(40, 40, 40, 40);

    
//mouth2
    stroke(0);
    fill(225,4,21);
    ellipse(40, 45, mouthWidth* 1.5, mouthHeight * 5);
   
//eyes2
    fill(0);
    stroke(0);
    ellipse(33, eyeLeft * 11, 4, 4);
    ellipse(47, eyeRight * 11, 4, 4);
    
    stroke(0);
    fill(255);
    ellipse(33, eyeLeft * 11, 2, 2);
    ellipse(47, eyeRight * 11, 2, 2);
    
//blush2
    noStroke();
    fill(217,145,163);
    ellipse(31, eyeLeft * 13, 3, 3);
    ellipse(49, eyeRight * 13, 3, 3);
    

//////////////////////////////////////////third flower
 //petal3
for (int i=0; i<50; i++);
{
translate(-40, -40);
 stroke(0);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(277,0,22);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(239,119,25);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(253,219,0);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(255,234,0);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(170,201,19);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(1,148,67);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(1,153,140);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(9,155,215);
  rotate(radians(40));
  ellipse(15, 15, 13, 13);
  fill(277,0,22);
 }
 
 //face3
 translate(40, 40);
    stroke(0);
    fill(255);
    ellipse(-40, -40, 40, 40);

//mouth3
    stroke(0);
    fill(225,4,21);
    ellipse(-40, -30, mouthWidth* 1.5, mouthHeight * 5);
   
//eyes3
    fill(0);
    stroke(0);
    ellipse(-33, -eyeLeft * 15, 4, 4);
    ellipse(-47, -eyeRight * 15, 4, 4);
    
    stroke(0);
    fill(255);
    ellipse(-33, -eyeLeft * 15, 2, 2);
    ellipse(-47, -eyeRight * 15, 2, 2);
    
//blush3
    noStroke();
    fill(217,145,163);
    ellipse(-31, -eyeLeft * 13, 3, 3);
    ellipse(-49, -eyeRight * 13, 3, 3);
    
    
    
////////////////////// forth flower

 //petal4
for (int i=0; i<50; i++);
{
translate(50, -50);
 stroke(0);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(277,0,22);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(239,119,25);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(253,219,0);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(255,234,0);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(170,201,19);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(1,148,67);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(1,153,140);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(9,155,215);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(277,0,22);
 }
 
 //face4
 translate(50, 50);
    stroke(0);
    fill(255);
    ellipse(-50, -50, 45, 45);

//mouth4
    stroke(0);
    fill(225,4,21);
    ellipse(-50, -45, mouthWidth* 1.5, mouthHeight * 5);
   
//eyes4
    fill(0);
    stroke(0);
    ellipse(-43, -eyeLeft * 18, 4, 4);
    ellipse(-57, -eyeRight * 18, 4, 4);
    
    stroke(0);
    fill(255);
    ellipse(-43, -eyeLeft * 18, 2, 2);
    ellipse(-57, -eyeRight * 18, 2, 2);
    
//blush4
    noStroke();
    fill(217,145,163);
    ellipse(-40, -eyeLeft * 16, 3, 3);
    ellipse(-60, -eyeRight * 16, 3, 3);
    
////////////////////// fifth flower

 //petal5
for (int i=0; i<50; i++);
{
translate(-160, 50);
 stroke(0);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(277,0,22);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(239,119,25);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(253,219,0);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(255,234,0);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(170,201,19);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(1,148,67);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(1,153,140);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(9,155,215);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(277,0,22);
 }
 
 //face5
 translate(50, 50);
    stroke(0);
    fill(255);
    ellipse(-50, -50, 45, 45);

//mouth5
    stroke(0);
    fill(225,4,21);
    ellipse(-50, -45, mouthWidth* 1.5, mouthHeight * 5);
   
//eyes5
    fill(0);
    stroke(0);
    ellipse(-43, -eyeLeft * 18, 4, 4);
    ellipse(-57, -eyeRight * 18, 4, 4);
    
    stroke(0);
    fill(255);
    ellipse(-43, -eyeLeft * 18, 2, 2);
    ellipse(-57, -eyeRight * 18, 2, 2);
    
//blush5
    noStroke();
    fill(217,145,163);
    ellipse(-40, -eyeLeft * 16, 3, 3);
    ellipse(-60, -eyeRight * 16, 3, 3);
    
        
////////////////////// sixth flower

 //petal6
for (int i=0; i<50; i++);
{
translate(85, -100);
 stroke(0);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(277,0,22);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(239,119,25);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(253,219,0);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(255,234,0);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(170,201,19);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(1,148,67);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(1,153,140);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(9,155,215);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(277,0,22);
 }
 
 //face6
 translate(50, 50);
    stroke(0);
    fill(255);
    ellipse(-50, -50, 45, 45);

//mouth6
    stroke(0);
    fill(225,4,21);
    ellipse(-50, -45, mouthWidth* 1.5, mouthHeight * 5);
   
//eyes6
    fill(0);
    stroke(0);
    ellipse(-43, -eyeLeft * 18, 4, 4);
    ellipse(-57, -eyeRight * 18, 4, 4);
    
    stroke(0);
    fill(255);
    ellipse(-43, -eyeLeft * 18, 2, 2);
    ellipse(-57, -eyeRight * 18, 2, 2);
    
//blush6
    noStroke();
    fill(217,145,163);
    ellipse(-40, -eyeLeft * 16, 3, 3);
    ellipse(-60, -eyeRight * 16, 3, 3);
    
    
    
////////////////////// seventh flower
//petal7
for (int i=0; i<50; i++);
{
translate(-200, -50);
 stroke(0);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(277,0,22);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(239,119,25);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(253,219,0);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(255,234,0);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(170,201,19);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(1,148,67);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(1,153,140);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(9,155,215);
  rotate(radians(40));
  ellipse(15, 15, 15, 15);
  fill(277,0,22);
 }
 
 //face7
 translate(50, 50);
    stroke(0);
    fill(255);
    ellipse(-50, -50, 45, 45);

//mouth7
    stroke(0);
    fill(225,4,21);
    ellipse(-50, -45, mouthWidth* 1.5, mouthHeight * 5);
   
//eyes7
    fill(0);
    stroke(0);
    ellipse(-43, -eyeLeft * 18, 4, 4);
    ellipse(-57, -eyeRight * 18, 4, 4);
    
    stroke(0);
    fill(255);
    ellipse(-43, -eyeLeft * 18, 2, 2);
    ellipse(-57, -eyeRight * 18, 2, 2);
    
//blush7
    noStroke();
    fill(217,145,163);
    ellipse(-40, -eyeLeft * 16, 3, 3);
    ellipse(-60, -eyeRight * 16, 3, 3);
    
  }
}

// OSC CALLBACK FUNCTIONS

public void found(int i) {
  println("found: " + i);
  found = i;
}

public void poseScale(float s) {
  println("scale: " + s);
  poseScale = s;
}

public void posePosition(float x, float y) {
  println("pose position\tX: " + x + " Y: " + y );
  posePosition.set(x, y, 0);
}

public void poseOrientation(float x, float y, float z) {
  println("pose orientation\tX: " + x + " Y: " + y + " Z: " + z);
  poseOrientation.set(x, y, z);
}

public void mouthWidthReceived(float w) {
  println("mouth Width: " + w);
  mouthWidth = w;
}

public void mouthHeightReceived(float h) {
  println("mouth height: " + h);
  mouthHeight = h;
}

public void eyeLeftReceived(float f) {
  println("eye left: " + f);
  eyeLeft = f;
}

public void eyeRightReceived(float f) {
  println("eye right: " + f);
  eyeRight = f;
}

public void eyebrowLeftReceived(float f) {
  println("eyebrow left: " + f);
  eyebrowLeft = f;
}

public void eyebrowRightReceived(float f) {
  println("eyebrow right: " + f);
  eyebrowRight = f;
}

public void jawReceived(float f) {
  println("jaw: " + f);
  jaw = f;
}

public void nostrilsReceived(float f) {
  println("nostrils: " + f);
  nostrils = f;
}

// all other OSC messages end up here
void oscEvent(OscMessage m) {
  if(m.isPlugged() == false) {
    println("UNPLUGGED: " + m);
  }
}
