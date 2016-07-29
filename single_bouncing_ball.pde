// Instead of a bunch of floats, we now just have two PVector variables.
PVector location;
PVector velocity;

void setup() {
  size(200,200);
  smooth();
  background(255);
  location = new PVector(100,100);
  velocity = new PVector(2.5,5);
}

void draw() {
  noStroke();
  fill(255,10);
  
  location.add(velocity);


  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }

   background(0);
  stroke(0);
  fill(175);
  ellipse(location.x,location.y,16,16);
}