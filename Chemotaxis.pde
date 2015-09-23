Bacteria[] colony;
Cross bob;


   void setup()   
 {     
   size(500, 500);

   bob = new Cross(250,250);

   colony = new Bacteria[1000];
  for (int i =0; i< colony.length; i++){
  colony[i] = new Bacteria(250,250,0,0,0);

  
  



   
    }
   
 }   
 void draw()   
 {    
   background(205,205,193);

    bob.show();
    bob.move();

   for (int i =0; i< colony.length; i++)
   {
   colony[i].show();
   colony[i].move();
   colony[i].mouseMove();


    }
 }  
 class Bacteria    
 {     

   int bacX;
  int bacY;
  int bacClrR;
  int bacClrB;
  int bacClrG;
   
   Bacteria(int x, int y, int clrR,int clrG,int clrB)
   {

     bacX = x;
     bacY = y;
     bacClrR =clrR;
     bacClrG =clrG;
     bacClrB =clrB;

   }

   void move() {

     

     bacX = bacX +  (int)(Math.random()*15)-7;
     bacY = bacY +  (int)(Math.random()*15)-7;
   }
 
   void show (){

     bacClrR = (int)(Math.random()*256);
     bacClrB = (int)(Math.random()*256);
     bacClrG = (int)(Math.random()*256);

     noStroke();
     fill(bacClrR,bacClrG,bacClrB);
        ellipse(bacX,bacY,10,10);
        fill(255,215,0);
     ellipse(bacX,bacY,30,30);  
        fill (255);
     ellipse(bacX,bacY,20,20);
      fill (0);
     
     


   }

   void mouseMove() {

    if(mouseX>bacX) 
    {
      bacX = bacX +  (int)(Math.random()*15)-1;
    }

    if(mouseX<bacX) 
    {
      bacX = bacX +  (int)(Math.random()*15)-14;
    }

    if(mouseY>bacY) 
    {
      bacY = bacY +  (int)(Math.random()*15)-1;
    }

    if(mouseY<bacY) 
    {
      bacY = bacY +  (int)(Math.random()*15)-14;
    }

   }


 }

 class Cross {
  int myX;
  int myY;

  Cross(int x, int y) {

    myX =x;
    myY =y;
  }

  void move() {
    myX = mouseX;
    myY =mouseY;
  }

 void show () {

    fill (255);
    rect(myX,myY,50,25);  
    fill (0);
    rect(myX,myY,10,70); 
    fill (255,0,0);
    ellipse(myX+30,myY+12,15,15);
      } 

}
