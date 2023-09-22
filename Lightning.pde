  int startX = 0;
  int startY = 250;
  int endX = 0;
  int endY = 250;
  int total = 0;
  PImage img; 
void setup()
{
  size(500,500);
  background(0);
  img = loadImage("stonks.jpeg");
}
void draw()
{
 background(0);
 image(img,0,0);
  strokeWeight(2);
while(endX < 500) {
  endX = startX + (int)(Math.random() * 20);
  endY = startY + (int)((Math.random() * 50)-25);
  System.out.println(endY);
  if(endY > startY)
  stroke(255,0,0);
 else if(endY < startY)
 stroke(0,255,0);
  line(startX,startY,endX,endY);
  startX = endX;
  startY= endY;
}
  strokeWeight(1);
  total = total + 250 - endY;
  textSize(50);
    text("$ = " + total,200,450);
    noLoop();
}

void mousePressed() {
  startX = 0;
  endX = 0;
  startY = 250;
  endY = 250;
  redraw();
}
