PImage img;

void setup() {
  img = loadImage("boogie.jpg");
  size (img.width,img.height);
  stroke(255);
  background(255);
  smooth();
  frameRate(100);
}

void draw() {
  int randomX;
  int randomY;
  int randomH;
  int randomW;
  
  randomH = int(random(10,10));
  randomW = int(random(10,10));
   
  randomX = int(random(800));
  randomY = int(random(800));
   
//  int r = int(random(256));
//  int g = int(random(256));
//  int b = int(random(256));
  
  color c = img.get(randomX, randomY);
  stroke(c);
  fill (c,200);
  rect(randomX, randomY, mouseY/20+randomW, mouseY/20+randomH);
  
  if (mousePressed) {
    stroke(255);
    fill (255);
    rect(randomX, randomY, mouseY/20+randomW, mouseY/20+randomH);
  }
  
  fill(255);
  stroke(255);
  triangle(0, 0, width/2, 0, 0, height/2);
  triangle(width/2, height, 0, height/2, 0, height);
  triangle(width, height, width, height/2, width/2, height);
  triangle(width, 0, width/2, 0, width, height/2);
}
