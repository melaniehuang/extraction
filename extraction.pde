/* Extraction(2017) by Mel Huang */

PVector location; 
PVector velocity;
float ellipseSize = 10;

void setup(){
  size(1200,800, P2D);
  smooth(8);
  background(#17CBFF);
  noStroke();
  location = new PVector(600, -100);
  velocity = new PVector(0, 2);
}

void draw(){
  fill(#FF6517);
  rect(0, (height/3)*2, width, 400);
  
  if (location.y < 500 && ellipseSize < 100) {
    ellipseSize++;
  } else if (location.y == 500) {
    ellipseSize += 50;
  } else {
    ellipseSize--;
  }
  
  location.add(velocity);
  ellipse(location.x,location.y, ellipseSize, ellipseSize);
}