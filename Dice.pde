void setup()
{
  size(600, 600);  
  noLoop();
}
void draw()
{
  background(192);
  int numTotal = 0;
  for (int x = 5; x < 350; x = x + 55)
  {
    for (int y = 5; y < 350; y = y + 55)
    {
      Die bob = new Die(x, y);
      bob.roll();
      bob.show();
      if (bob.dots == 1)
      {
        numTotal = numTotal + 1;
      }
       if (bob.dots == 2)
      {
        numTotal = numTotal + 2;
      }
       if (bob.dots == 3)
      {
        numTotal = numTotal + 3;
      }
       if (bob.dots == 4)
      {
        numTotal = numTotal + 4;
      }
       if (bob.dots == 5)
      {
        numTotal = numTotal + 5;
      }
       if (bob.dots == 6)
      {
        numTotal = numTotal + 6;
      }
      
    }
  }
  System.out.println(numTotal);
  //System.out.println(ConsoleColors.RED + "RED COLORED" + numTotal);
  text("There are " +  numTotal  + " pixels ", 125, 400);
  }
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int dots;
  int myX, myY;
  Die(int x, int y) //constructor
  {
    dots = 1;
    myX = x;
    myY = y;
  }
  void roll()
  {
   dots = (int)(Math.random()*5)+1;
  }
  void show()
  {
    noStroke();
    fill(#272C39);
    rect(myX, myY, 50, 50);
    fill(#FFE0F6);
    if ( dots == 1)
      rect(myX+25, myY+25, 10, 10);
    else if (dots == 2)
    {
      rect(myX+10, myY+10, 10, 10);
      rect(myX+40, myY+40, 10, 10);
    }
    else if (dots == 3)
    {
      rect(myX+10, myY+10, 10, 10);
      rect(myX+25, myY+25, 10, 10);
      rect(myX+40, myY+40, 10, 10);
    }
    else if (dots == 4)
    {
      rect(myX+10, myY+10, 10, 10);
      rect(myX+40, myY+10, 10, 10);
      rect(myX+40, myY+40, 10, 10);
      rect(myX+10, myY+40, 10, 10);
    }
    else if (dots == 5)
    {
      rect(myX+10, myY+10, 10, 10);
      rect(myX+40, myY+10, 10, 10);
      rect(myX+25, myY+25, 10, 10);
      rect(myX+40, myY+40, 10, 10);
      rect(myX+10, myY+40, 10, 10);
    }
    else if (dots == 6)
    {
      rect(myX+10, myY+10, 10, 10);
      rect(myX+40, myY+10, 10, 10);
      rect(myX+10, myY+25, 10, 10);
      rect(myX+40, myY+25, 10, 10);
      rect(myX+40, myY+40, 10, 10);
      rect(myX+10, myY+40, 10, 10);;
    }
  }
}
