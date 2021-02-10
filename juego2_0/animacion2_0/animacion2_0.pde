int imageIndex=0;
int imageIndex2=0;
PImage[] carabolita = new PImage[8];
PImage [] carabolitaA = new PImage [8];
//float speed3 = 3;
float speed = 7;
float x2=0;
float movimientobola = 50;
void setup() {
  size(1000, 1000);
  for (int i = 0; i < carabolita.length; i++)
  {
    carabolita[i]=loadImage("Captura de pantalla" + i + ".png");
  }
  for(int i2 =0; i2<carabolitaA.length; i2++)
  {
     carabolitaA[i2]=loadImage("Capturade pantalla" + i2 + ".png");
  }
  frameRate(14);
  imageMode(CENTER);
}
void draw() {
  background(0);
  if (keyPressed && (key == CODED)) {// If it's a coded key}.

    if (keyCode == RIGHT) { // If it's the right arrow
      //x2+=speed3;
      movimientobola+= speed;
       image(carabolita[imageIndex], movimientobola, height/2);
    imageIndex=(imageIndex+1) % carabolita.length;
    }
    if (keyCode == LEFT) { // If it's the right arrow
      //x2+=speed3;
      movimientobola-= speed;
      image(carabolitaA[imageIndex2], movimientobola, height/2);
    imageIndex2=(imageIndex2+1) % carabolitaA.length;
  }
}
  
}
