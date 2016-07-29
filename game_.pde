PImage bg;
float gx = 50; //x-position of green ball
float gy = 50; //y-position of green ball
float rx = 30; //x-position of red ball
float ry = 30; //y-position of red ball
int speedGY = 14; // speed of circle
int speedGX = 8; // speed of circle
int speedRY = 15; // speed of circle
int speedRX = 5;
int gameOver=0;
int x, y, score=0;
void setup ()
{

  size (533, 400);
  bg=loadImage("game_pic.jpeg");
}

void draw ()
{
  background(bg);
  creature();
  greenball();
  redball();
  score();
  println("rx = " + gx);
  println("ry = " + gy);
  
}

void creature()
{
  x =mouseX;
  y =mouseY;
  fill(#27F032); //green
  ellipse(x+20, y+20, 50, 50);  //body

  fill(0, 0, 0);  //black
  ellipse(x+2, y+45, 25, 7.5); //left Leg
  ellipse(x+35, y+45, 25, 7.5); //right Leg

  rect(x-3, y-5, 50, 5); //hat
  rect(x+5, y-30, 30, 25); //hat

  fill(255); //white
  rect(x+7, y+5, 7.5, 12.5); //left eye
  rect(x+23, y+5, 7.5, 12.5); //right eye

  fill(0); // black
  rect(x+10, y+10, 2.5, 5); //left eye
  rect(x+25, y+10, 2.5, 5); //right eye

  fill(#F01111); //red
  arc(x+20, y+20, 25, 25, 0, PI); //smile

  fill(255); //white
  rect(x+8, y+20, 25, 2.5); //teeth

  fill(255); //white trim on hat
  rect(x+5, y-10, 30, 5);
}


void greenball()
{
  fill(#1FD832); //greenball
  strokeWeight(1);
  //gy = height/2;

  //background(bg);
  //creature();
  if (gy <= 0)
  {
    speedGY = speedGY * -1;
    gy = 20;
  }
  if (gy >= height)
  {
    speedGY = speedGY * -1;
    gy = height - 20;
  }

  gy = gy + speedGY;

  if (gx <= 0)
  {
    speedGX= speedGX * -1;
  }
  if (gx>=width)
  {
    speedGX = speedGX * -1;
  }
  gx = gx + speedGX;
  //fill(0,255,0);
  ellipse(gx, gy, 20, 20);

  if ((gx > x) && (gx+20 < x+50)&&(gy > y) && (gy+20 < y+50))
  {
    score = score + 100;
  }
}


void redball()
{
  fill(#D81F1F); //redball


  strokeWeight(1);
  //ry = height/2;

  //background(bg);
  //creature();
  if (ry <= 20)
  {
    speedRY = speedRY * -1;
    ry=20;
  }
  if (ry >= height)
  {
    speedRY = speedRY * -1;
    ry=height-20;
  }

  rx = rx + speedRX;
  ry = ry + speedRY;
  if (rx <= 0)
  {
    speedRX= speedRX * -1;
  }
  if (rx>=width)
  {
    speedRX = speedRX * -1;
  }
  rx = rx + speedRX;
  fill(255, 0, 0);
  ellipse(rx, ry, 20, 20);
  if ((ry > y) && (ry+20 < y+50)&&(rx > x) && (rx+20 < x+50))
  {
   score=gameOver;
  {
    background(0);
  fill(255);
  text("game over", 250,250);
  text("click to restart", 250,275);
}
  }
}

void score()
{
  fill(255);
  text("SCORE:" +score, 20, 400);
  println(score);
}