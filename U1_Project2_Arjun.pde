//variables
float x;
float y;
float easing = 0.05;
float x1 = 100;
float y1 = 100;


void setup()
{
 //drawing background
 fullScreen(); 
 background(0);
}

void draw()
{  
 //drawing text
 textSize(32);
 fill(0,255,0);
 text("Click on circle to begin, and use your mouse to drag wherever you want.",width*0.12,width*0.07);
 
 //drawing circle with original color
 fill(255);
 
 float targetX = mouseX;
 float dx = targetX - x;
 x += dx * easing;
 
 float targetY = mouseY;
 float dy = targetY - y;
 y += dy * easing; 
 ellipse(mouseX,mouseY,x1,y1);
}
 
 //changing size and colors of circle
 void keyPressed()
 {
   if(key == 'w')
   {
     x1 = x1+10; 
     y1 = y1+10;
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == 's')
   {
     x1 = x1-10;
     y1 = y1-10;
     ellipse(mouseX,mouseY,x1,y1);
   } 
   else if(key == '1') //get the color to change without holding the key down
   {
     fill(0,255,0);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '2')
   {
     fill(0,0,255);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '3')
   {
     fill(255,255,0);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '4')
   {
     fill(63,36,117);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '5')
   {
     fill(204,51,204);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '6')
   {
     fill(random(256));
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '7')
   {
     fill(255,102,0);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '8')
   {
     fill(random(255), random(255), random(255));
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '9')
   {
     fill(202,255,255);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '0')
   {
     fill(102,0,0);
     ellipse(mouseX,mouseY,x1,y1);
   }
}

//make art with collisions
//have one line move around wherever you want
//mouseDragged to move circle (collision)
//make circle
//use key pressed to change size of shape