/* @pjs preload= 'thankyou.png.png"; */

int X = 400;
int Y = 400;
int v = 5;
int bounce = 6;
PImage heart;
PImage img;

boolean x1 = true;
PFont mono;
void setup(){
size(600,600);
background(255);
heart = loadImage("heart.png");
}

void draw(){
if(x1==true){
background(0);
fill(255);
rect(50,50,500,500);
noStroke();

image(heart, 150,100,width /2, height/2);
img = loadImage("thankyou.png.png");
image(img, 20, 100,width/1.1,height/2);

textAlign(CENTER);
fill(#FC527A);
textSize(30);
text("PRESS THE CIRCLE", 300, 430);

stroke(0);
fill(255, random(255), random(255));
 ellipse(X,490,100,100);
  X=X+bounce;
  
  if(X>width-10 || X<0)
  {
    bounce=bounce*(-1);
  }
   
}

if(mousePressed){
  x1=false;
  noStroke();
  background(0);
  rect(50,50,500,500);
  ellipse(120,120,100,100);
  

img = loadImage("heart.png");
image(heart, 70,100,width /6, height/6);
image(heart, 430,100,width /6, height/6);
image(heart, 70,440,width /6, height/6);
image(heart, 430,440,width /6, height/6);





    fill(#FF0000);
ellipse(300,300,100,100);
ellipse(340,300,100,100);
ellipse(260,300,100,100);
ellipse(220,300,100,100);
ellipse(370,300,100,100);

  fill(#0e2f44);
  mono = loadFont("FreestyleScript-Regular-48.vlw");
  textFont(mono);
textAlign(CENTER);
textSize(60);
text("MOM & DAD ", 300, 315);

textSize(80);
text("Thank You", 300, 200);

textSize(60);
text("For Everything You Did For Me", 300, 425);
}
}
