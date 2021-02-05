int radius = 40;
float x = 50;
float y= 490;
float speed = 2.5;
float speed2 = 2.5;
int direction = 1;
PImage img;
float x2=x;
void setup() {
size(1300, 680);
ellipseMode(RADIUS);
img = loadImage("ball.jpg");

}
void draw() {
 image(img, x2, 0);
  text(mouseX,200,200);
  text(mouseY,400,200);
//background(0);
imageMode(CORNER);
//image(img,x,0);

arc(x, y, radius, radius, 0, 360);
       fill(255,65,67);

if (keyPressed && (key == CODED)) {// If it's a coded key}.

if (keyCode == LEFT) { // If it's the right arrow

x-= speed2;

 // Face left
 /*
if (x > width-radius)  {

speed=0;
}
else if  ( radius > x){
 direction = -direction;
  speed2=0;
}*/
}
 if (keyCode == RIGHT) { // If it's the right arrow
image(img, x2+img.width,0);
 x2-=speed;
x+= speed;

/*if (x > width-radius)  {

speed=0;
}
else if  ( radius > x){
 direction = -direction;
  speed2=0;
}
else {
speed = 2.5;
speed2 = 2.5;
}*/

 
}

if (keyCode == UP) {
y-=speed;

if (y > height-radius)  {

speed=0;

}
else if  ( radius > y){
 direction = -direction;
  speed=0;
}
}else if (keyCode == DOWN) {
y+=speed2;


if (y > 528-radius)  {

speed2=0;
}
else if  ( radius > y){
 direction = -direction;
  speed2=0;
}
else {
speed = 2.5;
speed2 = 2.5;
}
}
}
}
