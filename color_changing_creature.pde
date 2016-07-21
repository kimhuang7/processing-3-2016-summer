void setup ()
{
size( 500,500);
background (#03FFF9);
stroke(0);
}

void draw()
{
  background(#03FFF9);
  int x =mouseX;
  int y =mouseY;

fill(mouseX,55,mouseY); //green
ellipse(x,y,100,100);  //body

fill(0,0,0);  //black
ellipse(x-40, y+50,50,15); //left Leg
ellipse(x+40,y+50,50,15); //right Leg

rect(x-50,y-50,100,10); //hat
rect(x-30, y-100, 60, 50); //hat

fill(255); //white
rect(x-25,y-25,15,25); //left eye
rect(x,y-25,15,25); //right eye


fill(0); // black
rect(x-20,y-15,5,10); //left eye
rect(x+5,y-15,5,10); //right eye

fill(#F01111); //red
arc(x, y+8,50, 50, 0, PI); //smile

fill(255); //white
rect(x-25,y+7,50,5); //teeth

fill(255); //white trim
rect(x-30,y-63,60,10);
}