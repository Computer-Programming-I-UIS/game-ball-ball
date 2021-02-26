class figura {
  //Salto
float posY = 0;
float vely = 0;
float gravedad = 0.8  ;
int size = 20 ;
boolean salto = false;
boolean dead = false;
int runCount =-5;
int lifespan;
int score;

figura (){   
}
void jump(){
  if(posY == 0 ){  
   gravedad = 0.8;
   vely= 16;
  }
}

void show(){
    if(salto && posY == 0){
      if(runCount < 0){
      image(carabolitaRun1, figuraXpos - carabolitaRun1.width , height - groundHeight - (posY + carabolitaRun1.height));
    }
    }
    else{
      image(carabolitaJump, figuraXpos - carabolitaJump.width , height - groundHeight - (posY + carabolitaJump.height));
    }
    
    if(!dead){
      runCount++;
    }
    if(runCount >5){
     runCount = -5; 
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
 
 for(int i = 0; i < enemigos.size(); i++){
      if(dead){
        if(enemigos.get(i).colisionar(figuraXpos, posY + carabolitaJump.height / 2, carabolitaJump.width * 0.5, carabolitaJump.height)){
          dead = true;
        }
        else{
        if(enemigos.get(i).colisionar(figuraXpos, posY + carabolitaRun1.height / 2, carabolitaRun1.width * 0.5, carabolitaRun1.height)){
          dead = true;
        }
        }
    
      }
    }
}

/*void bandera(){
   if (direccionDerecha) {
      image(carabolita1[imageIndex], movimientobola, 430);
      
    } else {
      image(carabolitaA[imageIndex2], movimientobola, 430);
    }
}
*/

  void update(){
    incrementCounter();
    mover();
  }
  
  void incrementCounter(){
    lifespan++;
    if(lifespan % 3 == 0){
      score += 1;
    }
  }
}
