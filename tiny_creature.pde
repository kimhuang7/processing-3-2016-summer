
void setup ()
{
size( 500,500);
stroke(0);
}

void draw()
{
  
  background(255);
  int x =mouseX;
  int y =mouseY;

fill(#27F032); //green
ellipse(x+20,y+20,50,50);  //body

fill(0,0,0);  //black
ellipse(x+2,y+45,25,7.5); //left Leg
ellipse(x+35,y+45,25,7.5); //right Leg

rect(x-3,y-5,50,5); //hat
rect(x+5,y-30, 30,25); //hat

fill(255); //white
rect(x+7,y+5,7.5,12.5); //left eye
rect(x+23,y+5,7.5,12.5); //right eye


fill(0); // black
rect(x+10,y+10,2.5,5); //left eye
rect(x+25,y+10,2.5,5); //right eye

fill(#F01111); //red
arc(x+20,y+20,25,25, 0, PI); //smile

fill(255); //white
rect(x+8,y+20,25,2.5); //teeth

fill(255); //white trim on hat
rect(x+5,y-10,30,5);
}