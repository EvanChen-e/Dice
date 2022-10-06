int total = 0;
 void setup()
  {
      noLoop();
      size(400,400);
      background(200,200,250);
      frameRate(15);
  }
  void draw()
  {
  background(200,200,250);
  total = 0;
  for(int y = 10; y <= 300; y+=65)
    {
    for(int x = 10; x <= 350; x+=65)
    {
      Die instances = new Die(x,y);
      instances.show();
      instances.roll();
    }
  }
  textSize(20);
  textAlign(CENTER);
  text("Total number rolled: " + total, 200,350);
  }
  void mousePressed()
  {
      if(mouseButton == LEFT){
      noLoop();
      redraw();
      }
      if(mouseButton == RIGHT){
        loop();
        
      }
  }
  
  class Die //models one single dice cube
  {
      int myX,myY;
      
      Die(int x, int y) //constructor
      {
          myX = x;
          myY = y;
      }
      void roll()
      {
        int count = (int)(Math.random()*6)+1;
        fill(0,0,0);
        if (count == 6){
          for(int y = 10; y <= 30; y+=10){
           for(int x = 10; x <= 30; x+=20){
             ellipse(myX+x,myY+y,5,5);
           }
          }
          total+=6;
        } else if (count == 5){ 
          for(int y = 10; y <= 30; y+=20){
           for(int x = 10; x <= 30; x+=20){
             ellipse(myX+x,myY+y,5,5);
           }
          }
          total+=5;
          ellipse(myX+20,myY+20,5,5);
        } else if (count == 4){
          for(int y = 10; y <= 30; y+=20){
           for(int x = 10; x <= 30; x+=20){
             ellipse(myX+x,myY+y,5,5);
           }
          }
          total+=4;
        } else if (count == 3){
          ellipse(myX+30,myY+30,5,5);
          ellipse(myX+20,myY+20,5,5);
          ellipse(myX+10,myY+10,5,5);
          total+=3;
        } else if (count == 2){
          ellipse(myX+30,myY+30,5,5);
          ellipse(myX+10,myY+10,5,5);
          total+=2;
        } else {
          ellipse(myX+20,myY+20,5,5);
          total+=1;
        }
      }
      void show()
      {
        
          fill(255,255,255);
          rect(myX,myY,40,40);
      }
  }


