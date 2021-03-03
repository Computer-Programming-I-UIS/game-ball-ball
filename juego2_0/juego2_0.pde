import ddf.minim.*;
import processing.sound.*;
//musica
SoundFile sonidomenu, nivel_1, nivel_2, nivel_3;

//salto de la bolita y amimacion
int imageIndex=0;
int imageIndex2=0;
boolean direccionDerecha = true;//direccion de la bandera 
float movimientobola = 50;

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



PImage carabolitaJump;//iamgen para salto 
PImage carabolitaRun1;//iamgen para possalto

ArrayList<enemigo> enemigos = new ArrayList<enemigo>();



int enemigotime =0;
int mintimebetobs= 60;
int randomadicion =0;
int groundcounter =0;
float speed = 6;
PImage clasificacio1;
PImage clasificacio2;
float fondox=0;
int groundHeight = 150;// altura del suelo de la bolita
int figuraXpos = 200;//Posicion x de la figura 

figura carabolita;//clase figura 
niveles carabola;//clase nivel
musica carabola1;
enemigo carabol;
float posY = 0;
int radius = 40;
int gamestate=1;// inicializacion del juego pantalla de inico
float y= 490;
float speed3fondo=4;
int direction = 1;
PImage img, img2, imgh, imgr, imgN5;//imagenes inicio y nivles
float posicionfondo=0;
//posicion de las imagenes
int posxI=0;
int posYI=0;



//Niveles 
PImage imgN, imgN2, imgN3, imgN4, imagenc1, imagenc2, enm1, enm2, imgper;// imagenes para los niveles 


void setup() {


  size(1300, 680);
  //Niveles imagenes cargadas 
  ellipseMode(RADIUS);
  imagenc2 = loadImage("Juego.jpg");
  imagenc1 = loadImage("clasf.png");
  imgN = loadImage("fondo4.jpg");//fondo nivel 1 
  imgN3=loadImage("niveles.jpg");//fondo niveles
  imgN4=loadImage("nivel2.jpg");
  img = loadImage("fondo1.jpg");
  img2=loadImage("fondo.png");
  imgh=loadImage("Home.png");
  imgr=loadImage("Reset.png");
  imgN5=loadImage("fondo5.jpg");
  enm1 = loadImage("enemigo1.jpg");
  enm2 = loadImage("enemigo2.jpg");
  imgper=loadImage("perdiste.png");

  //sonido
  sonidomenu = new SoundFile(this, "menu.mp3");
  nivel_1=new SoundFile(this, "nivel1.mp3");
  nivel_2=new SoundFile(this, "nivel2.mp3");
  carabola1 =new musica();

  //salto de la bolita y animacion 
  carabolitaRun1 = loadImage("Captura de pantalla0.png");
  carabolitaJump = loadImage("Captura de pantalla0.png");
  carabola = new niveles(); 
  carabolita = new figura();
}
void draw() {
  carabola.level();
  text(mouseX, 600, 600);
  text(mouseY, 600, 400);
}
void keyPressed() {
  switch(key) {
  case' ':
    carabolita.jump(); 
    break;
  }
}
void updateenemigos() {
  cargenemigos();
  carabolita.show();
  if (!carabolita.dead) {
    enemigotime++;
    speed += 0.00017;
    if (enemigotime > mintimebetobs + randomadicion) {
      addObstacle();
    }
    moveenemigos();
    carabolita.update();
  }
}

void cargenemigos() {

  for (int i = 0; i < enemigos.size(); i++) {
    enemigos.get(i).carg();
  }
}
int cantEnemigos = 1;

void addObstacle() {
  if (random(1) < 0.15) {
  } else {
    if (enemigos.size() < cantEnemigos)
      enemigos.add(new enemigo(floor(random(1))));
  }

  randomadicion = floor(random(50));
  enemigotime = 1;
}

void moveenemigos() {

  for (int i = 0; i < enemigos.size(); i++) {
    enemigos.get(i).mov(speed);
    if (enemigos.get(i).posix < -figuraXpos) {
      enemigos.remove(i);
      i--;
    }
  }
}

void reset() {
  if (mouseX>415 && mouseX < 555 && mouseY<507   && mouseY>371) {
    if (mousePressed == true)
    {
      gamestate=2;
    }
  }
}
