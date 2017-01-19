/* Extraction(2017) by Mel Huang */

PVector location; 
PVector velocity;
float ellipseSize = 20;

void setup(){
  size(1200,800, P2D);
  smooth(8);
  background(#17CBFF);
  noStroke();
  location = new PVector(600, -100);
  velocity = new PVector(0, 5);
}

void draw(){
  background(#17CBFF);
  fill(#FF6517);
  rect(0, (height/3)*2, width, 400);
  
  if (location.y < 520 && ellipseSize < 120) {
    ellipseSize += 0.4;
  } else if (location.y == 520) {
    ellipseSize += 50;
    location = new PVector(600, -100);
    ellipseSize = 20;
  }
  
  location.add(velocity);
  ellipse(location.x,location.y, ellipseSize, ellipseSize);
}