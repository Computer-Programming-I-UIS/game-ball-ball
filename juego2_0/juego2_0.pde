int radius = 40;
int gamestate=1;
float x = 50;
float y= 490;
float speedbolitaDA = 3;
float speed2bolitaIA = 3;
float speed3fondo=3;
int direction = 1;
PImage img,img2;
float posicionfondo=0;
//PImage [] balls = new PImage[9];
void setup() {
  size(1300, 680);
  ellipseMode(RADIUS);
 img = loadImage("ball.jpg");
  //img2=loadImage("maxresdefault.jpg");
  //for (int i =1; i< balls.length; i++){
 //  balls[i] = loadImage("Captura de pantalla"+i+".jpg"); 
  //}
}
void draw() {
  image(img, posicionfondo, 0);
  text(mouseX, 200, 200);
  text(mouseY, 400, 200);
  //background(0);
  imageMode(CORNER);
  
//image(balls[1],x,y,radius,radius);


  if (keyPressed && (key == CODED)) {// If it's a coded key}.

    if (keyCode == LEFT) { // If it's the right arrow
      posicionfondo += speed3fondo; //izquierda
     x -= speed2bolitaIA;  //derecha

      // Face left

       if  ( radius > x) {
        direction = -direction;
        speed2bolitaIA=0;
      } else  {
        speedbolitaDA = 3;
        speed2bolitaIA = 3;
      }
    }
    if (keyCode == RIGHT) { // If it's the right arrow
      posicionfondo-=speed3fondo;
      x+= speedbolitaDA;

      if (x > width-radius)  {
       
       speedbolitaDA=0;
      speed2bolitaIA = 3;
       }
       else if  ( radius > x){
       direction = -direction;
       speed2bolitaIA=0;
       }
       else {
       speedbolitaDA = 3;
       speed2bolitaIA = 3;
       }
    }

    if (keyCode == UP) {
      y-=speedbolitaDA;

      if (y > height-radius) {

        speedbolitaDA=0;
      } else if  ( radius > y) {
        direction = -direction;
        speedbolitaDA=0;
      }
    } else if (keyCode == DOWN) {
      y+=speed2bolitaIA;


      if (y > 528-radius) {

       speed2bolitaIA=0;
      } else if  ( radius > y) {
        direction = -direction;
        speed2bolitaIA=0;
      } else {
        speedbolitaDA = 3;
        speed2bolitaIA = 3;
      }
    }
   if(abs(posicionfondo) > img.width) posicionfondo = 0;
    image(img, posicionfondo+img.width, 0);
    image(img, posicionfondo-img.width, 0);
    ///keyPressed = false;
  }
 arc(x, y, radius, radius, 0, 360);
  fill(255, 65, 67);
}
