class figura {
  //Salto
float posY = 0;
float vely = 0;
float gravedad = 1.2;
int size = 20 ;
boolean salto = false;

int runCount =-5;
int lifespan;
int score;

figura (){   
}
void jump(){
  if(posY == 0 ){  
   gravedad = 1.2;
   vely= 16;
  }
}

void show(){
    if(salto && posY == 0){
      if(runCount < 0){
      image(carabolitaRun1, figuraXpos/* - carabolitaRun1.width*/ , height - groundHeight - (posY + carabolitaRun1.height));
    }
    }
    else{
      image(carabolitaJump, figuraXpos /*- carabolitaJump.width*/ , height - groundHeight - (posY + carabolitaJump.height));
    }
  }



void mover(){
 posY+= vely;
 if (posY > 0){
  vely -= gravedad; 
 }
 else{
   vely =0;
   posY =0;
   
 }
}
}
