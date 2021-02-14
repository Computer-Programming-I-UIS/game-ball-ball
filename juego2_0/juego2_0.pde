//salto de la bolita 
PImage[] carabolita1  = new PImage[8];
PImage [] carabolitaA = new PImage [8];
int imageIndex=0;
int imageIndex2=0;
boolean direccionDerecha = true;
float movimientobola = 50;
float speed = 7;



PImage carabolitaJump;
PImage carabolitaRun1;

int groundHeight = 150;
int figuraXpos = 100;

figura carabolita;


float posY = 0;
int radius = 40;
int gamestate=1;
float x = 50;
float y= 490;
float speedbolitaDA = 3;
float speed2bolitaIA = 3;
float speed3fondo=3;
int direction = 1;
PImage img, img2;
float posicionfondo=0;
int posxI=0;
int posYI=0;
//PImage [] balls = new PImage[9];

void setup() {
  size(1300, 680);
  frameRate(60);
  ellipseMode(RADIUS);
  img = loadImage("fondo1.jpg");
  img2=loadImage("maxresdefault.jpg");
   //imageMode(CENTER);
  //salto de la bolita 
   carabolitaRun1 = loadImage("Captura de pantalla0.png");
   carabolitaJump = loadImage("Captura de pantalla0.png");
   
  for (int i = 0; i < carabolita1.length; i++)
  {
    carabolita1[i]=loadImage("Captura de pantalla" + i + ".png");
  }
  for (int i2 =0; i2<carabolitaA.length; i2++)
  {
    carabolitaA[i2]=loadImage("Captura depantalla" + i2 + ".png");
  }

  carabolita = new figura();
}

void draw() {
  if (gamestate == 1) {
    image(img2, 0, 0);
  }
  if (mousePressed == true)
  {
    gamestate =0;
  }
  if (gamestate==0) {
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
        } else {
          speedbolitaDA = 3;
          speed2bolitaIA = 3;
        }
      }
      if (keyCode == RIGHT) { // If it's the right arrow
        posicionfondo-=speed3fondo;
        x+= speedbolitaDA;
        if (x > width-radius) {

          speedbolitaDA=0;
          speed2bolitaIA = 3;
        } else if  ( radius > x) {
          direction = -direction;
          speed2bolitaIA=0;
        } else {
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
    }// gamestate
    if (abs(posicionfondo) > img.width) posicionfondo = 0;
    image(img, posicionfondo+img.width, 0);
    image(img, posicionfondo-img.width, 0);
    ///keyPressed = false;
    // arc(x, y, radius, radius, 0, 360);
    //fill(255, 65, 67);
    carabolita.show();
    carabolita.mover();

    if (direccionDerecha) {
      image(carabolita1[imageIndex], movimientobola, 430);
    } else {
      image(carabolitaA[imageIndex2], movimientobola, 430);
    }
  }
}

void keyPressed() {
switch(key) {
  case' ':
    carabolita.jump(); 
    break;
  }
  if (key == CODED) {// If it's a coded key}.

    if (keyCode == RIGHT) { // If it's the right arrow
      //x2+=speed3;
      movimientobola+= speed;
      direccionDerecha = true;
      imageIndex=(imageIndex+1) % carabolita1.length;
  }
    }
    if (keyCode == LEFT) { // If it's the right arrow
      //x2+=speed3;
      movimientobola-= speed;
      direccionDerecha = false;
      imageIndex2=(imageIndex2+1) % carabolitaA.length;
    }
  }
