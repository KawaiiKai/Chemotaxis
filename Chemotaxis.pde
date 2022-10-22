Bacteria [] bob;
int x = ((int)(Math.random()*460)+20);
int y = ((int)(Math.random()*400)+20);
int score = 0;
int s  = 20;
int z = 15;
 void setup()   
 {
  //noCursor();
  frameRate(240);
  size(500,500);
  bob = new Bacteria[1000];
  for(int i=0; i<bob.length; i++)
  {
    bob[i] = new Bacteria();
  }
 }   
 void draw()   
 {   
  
  fill(255,255,255,10);
  rect(-10,-10,600,600);
  noStroke();
 fill(0,0,0);
 ellipse(x,y,10,10);
   for(int i=0; i<bob.length; i++)
  {
   bob[i].move();
    bob[i].show();
 } 
      fill(255,255,255);
     rect(190,435,120,30);
     fill(0,0,0);
     text("Viruses eaten: " + score, 200,450);
     if(dist(mouseX,mouseY,x,y) < s+z){
        x = ((int)(Math.random()*460)+20);
        y = ((int)(Math.random()*460)+20);
        score = score + 1;
        s = s + 2;
        z = z + 2;
        //dt = dt + 2;
     }
 }
 class Bacteria    
 {     
   int myX,myY,rgx;
   Bacteria()
   {
     myX = myY = 250;
     
     rgx = color((int)(Math.random()*100)+125,(int)(Math.random()*20)+167,(int)(Math.random()*10)+200);
   }
   void move()
   {
if (mouseX - s/2 > myX){
    myX = myX + (int)(Math.random()*s)+s;
  }else{
    myX = myX + (int)(Math.random()*s)-s;
  }
  if (mouseY - s/2 > myY){
    myY = myY + (int)(Math.random()*s)+s;
  }else{
    myY = myY + (int)(Math.random()*s)-s;
  }
   }
   void show()
   {
     noStroke();
     fill(rgx);
     ellipse(myX,myY,10,10);
     }
       
   
 
 }

