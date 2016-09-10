//variables
//float mouseX = width*0.5;
//float mouseY = height*0.5;
float x;
float y;
float easing = 0.05;

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
 
 //drawing circle with randomized colors
 fill(random(255),random(255),random(255));
 
 float targetX = mouseX;
 float dx = targetX - x;
 x += dx * easing;
 
 float targetY = mouseY;
 float dy = targetY - y;
 y += dy * easing;
 
 ellipse(mouseX,mouseY,100,100);
}

/*void mouseDragged()
{
  //moving circle with mouse
  if(mousePressed);
  ellipse(mouseX,mouseY,100,100);
  mouseX = mouseX + 5;
}*/

//make art with collisions
//have one line move around wherever you want
//mouseDragged to move circle (collision)
//make circle
//use key pressed to change size of shape