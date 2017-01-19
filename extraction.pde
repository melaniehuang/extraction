PImage img;
PVector imgPos;

void setup(){
  size(1200,900);
  background(255);
  img = loadImage("sprite.png");
  
}

void draw(){  
  blendMode(BLEND);
  imgPos = new PVector(random(200, width-200),random(200, height-200));

  for (int i = 0; i < 1000; i++){
    image(img, imgPos.x, i, 64, 64);
  }
}