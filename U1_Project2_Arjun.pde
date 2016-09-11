//variables
float x;
float y;
float easing = 0.05;
float x1 = 100;
float y1 = 100;
float r1 = 255;
float g1 = 255;
float b1 = 255;

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
 fill(r1,g1,b1);
 
 if (mousePressed == true)
 {
   float targetX = mouseX;
   float dx = targetX - x;
   x += dx * easing;
 
   float targetY = mouseY;
   float dy = targetY - y;
   y += dy * easing; 
   ellipse(mouseX,mouseY,x1,y1);
 }
 
 //changing size and colors of circle
 if (keyPressed)
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
     r1 = 0;
     g1 = 255;
     b1 = 0;
     fill(r1,g1,b1);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '2')
   {
     r1 = 0;
     g1 = 0;
     b1 = 255;
     fill(r1,g1,b1);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '3')
   {
     r1 = 255;
     g1 = 255;
     b1 = 0;
     fill(r1,g1,b1);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '4')
   {
     r1 = 63;
     g1 = 36;
     b1 = 117;
     fill(r1,g1,b1);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '5')
   {
     r1 = 204;
     g1 = 51;
     b1 = 204;
     fill(r1,g1,b1);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '6')
   {
     r1 = 0;
     g1 = 0;
     b1 = 153;
     fill(r1,g1,b1);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '7')
   {
     r1 = 255;
     g1 = 102;
     b1 = 0;
     fill(r1,g1,b1);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '8')
   {
     r1 = 153;
     g1 = 255;
     b1 = 102;
     fill(r1,g1,b1);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '9')
   {
     r1 = 102;
     g1 = 255;
     b1 = 255;
     fill(r1,g1,b1);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '0')
   {
     r1 = 102;
     g1 = 0;
     b1 = 0;
     fill(r1,g1,b1);
     ellipse(mouseX,mouseY,x1,y1);
   }
   else if(key == '-')
   {
     r1 = 255;
     g1 = 255;
     b1 = 255;
     fill(r1,g1,b1);
     ellipse(mouseX,mouseY,x1,y1);
   }
 }
}

//make art with collisions
//have one line move around wherever you want
//mouseDragged to move circle (collision)
//make circle
//use key pressed to change size of shape