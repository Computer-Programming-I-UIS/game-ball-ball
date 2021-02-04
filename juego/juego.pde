int radius = 40;
float x = 110;
float y= 110;
float speed = 2.5;
float speed2 = 2.5;
int direction = 1;
PImage img;
void setup() {
size(840, 600);
ellipseMode(RADIUS);
img = loadImage("ball.jpg");
}
void draw() {
  image(img, 0, 0);
//background(0);
if (keyPressed && (key == CODED)) {// If it's a coded key}
if (keyCode == LEFT) { // If it's the right arrow
arc(x, y, radius, radius, 3.67, 8.9); // Face left
x-= speed2;
fill(134,65,67);

if (x > width-radius)  {
//direction = -direction; // Flip direction
speed=0;
}
else if  ( radius > x){
 direction = -direction;
  speed2=0;
}
}
 if (keyCode == RIGHT) { // If it's the right arrow
arc(x, y, radius, radius, 0.52, 5.76); // Face right
x+= speed;
fill(134,65,67);
if (x > width-radius)  {
//direction = -direction; // Flip direction
speed=0;
}
else if  ( radius > x){
 direction = -direction;
  speed2=0;
}
else {
speed = 2.5;
speed2 = 2.5;
}
/*if (direction == 1) {
arc(x, 60, radius, radius, 0.52, 5.76); // Face right
}
} else {
arc(x, 60, radius, radius, 3.67, 8.9); // Face left

 }*/
 
}

if (keyCode == UP) {
y-=speed;
arc(x, y, radius, radius, radians(300), radians(600)); 
if (y > height-radius)  {
//direction = -direction; // Flip direction
speed=0;
fill(134,65,67);
}
else if  ( radius > y){
 direction = -direction;
  speed=0;
}
}else if (keyCode == DOWN) {
y+=speed2;
arc(x, y, radius, radius, radians(120), radians(420));
fill(134,65,67);
if (y > height-radius)  {
//direction = -direction; // Flip direction
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
