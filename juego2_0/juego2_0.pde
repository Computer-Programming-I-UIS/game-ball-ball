import ddf.minim.*;
import processing.sound.*;
//musica
SoundFile sonidomenu,nivel_1,nivel_2, nivel_3;

//salto de la bolita y amimacion
PImage[] carabolita1  = new PImage[8];//vector para la animacion derecha 
PImage [] carabolitaA = new PImage [8];//vector para la animacion izquierda 
int imageIndex=0;
int imageIndex2=0;
boolean direccionDerecha = true;//direccion de la bandera 
float movimientobola = 50;
float speed = 5;
int  y1=500;
int y2=570;
int  y3=640;
int y4=710;
int  y5=780;
int y6=850;
int  y7=920;
int y8=990;
int  y9=1060;
int y10=1130;
int  y11=1200;
int y12=1270;
int  y13=1340;
int y14=1410;
int  y15=1480;
int y16=1550;//cancionees
int  y17=1620;
int y18=1690;
int  y19=1800;
//int y20=1830;


PImage carabolitaJump;//iamgen para salto 
PImage carabolitaRun1;//iamgen para possalto

int enemigotime =0;
int mintimebetobs= 60;
int randomadiccion =0;
int groundcounter =0;
float speed = 10;

PImage clasificacio1;
PImage clasificacio2;

int groundHeight = 150;// altura del suelo de la bolita
int figuraXpos = 200;//Posicion x de la figura 

figura carabolita;//clase figura 
niveles carabola;//clase nivel


float posY = 0;
int radius = 40;
int gamestate=1;// inicializacion del juego pantalla de inico
float x1=300,x2=460,x3=460,x22=440,x4=780,x5=1100,x=0;
float x6=460,x7=440,x72=460,x8=620,x9=990,x10=1310;
float y= 490;
float speedbolitaDA = 3;
float speed2bolitaIA = 3;
float speed3fondo=4;
int direction = 1;
PImage img, img2,imgh,imgr,imgN5;//imagenes inicio y nivles
float posicionfondo=0;
//posicion de las imagenes
int posxI=0;
int posYI=0;



//Niveles 
PImage imgN, imgN2, imgN3,imgN4,imagenc1,imagenc2,enm1,enm2;// imagenes para los niveles 


void setup() {
  size(1300, 680);
  PFont mono;
  mono=loadFont("HighTowerText-Italic-48.vlw");
  textFont(mono);
  textSize(30);
  //Niveles imagenes cargadas 
  ellipseMode(RADIUS);
  imgN = loadImage("fondo4.jpg");//fondo nivel 1 
//  imgN2=loadImage("maxresdefault.png");//fondo inicio
  imgN3=loadImage("niveles.jpg");//fondo niveles
  imgN4=loadImage("nivel2.jpg");
  img = loadImage("fondo1.jpg");
  img2=loadImage("fondo.png");
  imgh=loadImage("Home.png");
  imgr=loadImage("Reset.png");
  imgN5=loadImage("fondo5.jpg");
  enm1 = loadImage("enemigo1.jpg");
  enm2 = loadImage("enemigo2.jpg");
  
  //sonido
 sonidomenu = new SoundFile(this, "menu.mp3");
 nivel_1=new SoundFile(this, "nivel1.mp3");
  nivel_2=new SoundFile(this, "nivel2.mp3");
 // nivel_3=new SoundFile(this, "nivel3.mp3");

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
 /*
  if ( key == CODED) {// If it's a coded key}.

    if (keyCode == RIGHT) { // If it's the right arrow
      movimientobola+= speed;
       direccionDerecha = true;
    imageIndex=(imageIndex+1) % carabolita1.length;
    }
    if (keyCode == LEFT) { // If it's the right arrow
      movimientobola-= speed;
      direccionDerecha = false;
    imageIndex2=(imageIndex2+1) % carabolitaA.length;
  }
}
  */
  }
