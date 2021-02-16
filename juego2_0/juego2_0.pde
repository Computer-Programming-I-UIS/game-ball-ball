//salto de la bolita y amimacion
PImage[] carabolita1  = new PImage[8];//vector para la animacion derecha 
PImage [] carabolitaA = new PImage [8];//vector para la animacion izquierda 
int imageIndex=0;
int imageIndex2=0;
boolean direccionDerecha = true;//direccion de la bandera 
float movimientobola = 50;
float speed = 5;



PImage carabolitaJump;//iamgen para salto 
PImage carabolitaRun1;//iamgen para possalto

int groundHeight = 150;// altura del suelo de la bolita
int figuraXpos = 200;//Posicion x de la figura 

figura carabolita;//clase figura 
niveles carabola;//clase nivel


float posY = 0;
int radius = 40;
int gamestate=1;// inicializacion del juego pantalla de inico
float x = 00;
float y= 490;
float speedbolitaDA = 3;
float speed2bolitaIA = 3;
float speed3fondo=4;
int direction = 1;
PImage img, img2;//imagenes inicio y nivles
float posicionfondo=0;
//posicion de las imagenes
int posxI=0;
int posYI=0;



//Niveles 
PImage imgN, imgN2, imgN3,imgN4;// imagenes para los niveles 

void setup() {
  size(1300, 680);
  //Niveles imagenes cargadas 
  ellipseMode(RADIUS);
  imgN = loadImage("fondo4.jpg");//fondo nivel 1 
  imgN2=loadImage("maxresdefault.png");//fondo inicio
  imgN3=loadImage("niveles.jpg");//fondo niveles
  imgN4=loadImage("nivel2.jpg");
  img = loadImage("fondo1.jpg");
  img2=loadImage("ball.png");
   //imageMode(CENTER);
  //salto de la bolita y animacion 
   carabolitaRun1 = loadImage("Captura de pantalla0.png");
   carabolitaJump = loadImage("Captura de pantalla0.png");
 carabola = new niveles(); 
 carabolita = new figura();
;
 for (int i = 0; i < carabolita1.length; i++)
  {
    carabolita1[i]=loadImage("Captura de pantalla" + i + ".png");
  }
  for(int i2 =0; i2<carabolitaA.length; i2++)
  {
     carabolitaA[i2]=loadImage("Captura depantalla" + i2 + ".png");
  }
}

void draw() {
    carabola.level();
      if (direccionDerecha) {
      image(carabolita1[imageIndex], movimientobola, 430);
    } else {
      image(carabolitaA[imageIndex2], movimientobola, 430);
    }
}
void keyPressed() {
switch(key) {
  case' ':
    carabolita.jump(); 
    break;
  }
  if ( key == CODED) {// If it's a coded key}.

    if (keyCode == RIGHT) { // If it's the right arrow
      //x2+=speed3;
      movimientobola+= speed;
       direccionDerecha = true;
    imageIndex=(imageIndex+1) % carabolita1.length;
    }
    if (keyCode == LEFT) { // If it's the right arrow
      //x2+=speed3;
      movimientobola-= speed;
      direccionDerecha = false;
    imageIndex2=(imageIndex2+1) % carabolitaA.length;
  }
}
  
  }
