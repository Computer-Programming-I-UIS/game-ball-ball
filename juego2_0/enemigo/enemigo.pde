int imageIndex=0;
int imageIndex2=0;
float speed=4;
float movimientobola = 0;
PImage[] enemigo= new PImage [2];
PImage[] enemigo2= new PImage[2];
void setup (){
  size(1000,800);
  for (int i=0; i<enemigo.length; i++)
  {
     enemigo[i]=loadImage("Sin título" + i + ".png");
  }
  for (int i2=0; i2<enemigo2.length; i2++)
  {
     enemigo2[i2]=loadImage("Sintítulo" + i2 + ".png");
  }
  imageMode(CENTER);
}

void draw()
{
  background(0);
  movimientobola+= speed;
  image(enemigo[imageIndex], movimientobola, height/2);
    imageIndex=(imageIndex+1) % enemigo.length;
    image(enemigo2[imageIndex2], movimientobola, 180);
    imageIndex2=(imageIndex2+1) % enemigo2.length;
}
