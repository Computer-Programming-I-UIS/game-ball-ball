int radius = 40;
float x = 50;
float y= 490;
float speed = 3;
float speed2 = 3;
float speed3=3;
int direction = 1;
PImage img;
float x2=0;
void setup() {
  size(1300, 680);
  ellipseMode(RADIUS);
  img = loadImage("ball.jpg");
}
void draw() {
  image(img, x2, 0);
  text(mouseX, 200, 200);
  text(mouseY, 400, 200);
  //background(0);
  imageMode(CORNER);
  //image(img,x,0);



  if (keyPressed && (key == CODED)) {// If it's a coded key}.

    if (keyCode == LEFT) { // If it's the right arrow
      x2 += speed3; //izquierda
      x -= speed2;  //derecha

      // Face left

       if  ( radius > x) {
        direction = -direction;
        speed2=0;
      } else  {
        speed = 3;
        speed2 = 3;
      }
    }
    if (keyCode == RIGHT) { // If it's the right arrow
      x2-=speed3;
      x+= speed;

      if (x > width-radius)  {
       
       speed=0;
       speed2 = 3;
       }
       else if  ( radius > x){
       direction = -direction;
       speed2=0;
       }
       else {
       speed = 3;
       speed2 = 3;
       }
    }

    if (keyCode == UP) {
      y-=speed;

      if (y > height-radius) {

        speed=0;
      } else if  ( radius > y) {
        direction = -direction;
        speed=0;
      }
    } else if (keyCode == DOWN) {
      y+=speed2;


      if (y > 528-radius) {

        speed2=0;
      } else if  ( radius > y) {
        direction = -direction;
        speed2=0;
      } else {
        speed = 3;
        speed2 = 3;
      }
    }
    if(abs(x2) > img.width) x2 = 0;
    image(img, x2+img.width, 0);
    image(img, x2-img.width, 0);
    //keyPressed = false;
  }
  arc(x, y, radius, radius, 0, 360);
  fill(255, 65, 67);
}
