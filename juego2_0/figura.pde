class figura {
  //Salto
  float posY = 0;
  float vely = 0;
  float gravedad = 0.3  ;
  int size = 20 ;
  boolean salto = false;
  boolean dead = false;
  int runCount =-5;
  int lifespan;
  int score;

  figura () {
  }
  void jump() {
    if (posY == 0 ) {  
      gravedad = 0.4;
      vely= 16;
    }
  }

  void show() {
    if (salto && posY == 0) {
      if (runCount < 0) {
        image(carabolitaRun1, figuraXpos - carabolitaRun1.width, height - groundHeight - (posY + carabolitaRun1.height));
      }
    } else {
      image(carabolitaJump, figuraXpos - carabolitaJump.width, height - groundHeight - (posY + carabolitaJump.height));
    }

    if (!dead) {
      runCount++;
    }
    if (runCount >5) {
      runCount = -5;
    }
  }

  void chocar(ArrayList<enemigo> cajitas) {
    float x = figuraXpos - carabolitaRun1.width, y = height - groundHeight - (posY + carabolitaRun1.height), a = carabolitaRun1.width, h = carabolitaRun1.height ;
    
    for (enemigo caja : cajitas) {
      float x_caja = caja.posix-enm1.width/2, y_caja = height-groundHeight-enm1.height, a_caja = enm1.width, h_caja = enm1.height;
      println("y + h > y_caja = " + str(y + h > y_caja));
      println("(x_caja > x && x_caja < x + a) || (x_caja + a_caja > x && x_caja + a_caja < x + a ) = " + str((x_caja > x && x_caja < x + a) || (x_caja + a_caja > x && x_caja + a_caja < x + a )));
      println("gamestate = " + str(gamestate));
      if ( ( (x_caja > x && x_caja < x + a) || (x_caja + a_caja > x && x_caja + a_caja < x + a ) ) && y + h > y_caja ) {
        
          image(imgper, 0, 0);
          
      }
    }
  }

  void mover() {
    posY+= vely;
    if (posY > 0) {
      vely -= gravedad;
    } else {
      vely =0;
      posY =0;
    }

    for (int i = 0; i < enemigos.size(); i++) {
      if (dead) {
        if (enemigos.get(i).colisionar(figuraXpos, posY + carabolitaJump.height / 2, carabolitaJump.width * 0.5, carabolitaJump.height)) {
          dead = true;
        } else {
          if (enemigos.get(i).colisionar(figuraXpos, posY + carabolitaRun1.height / 2, carabolitaRun1.width * 0.5, carabolitaRun1.height)) {
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

  void update() {
    incrementCounter();
    mover();
  }

  void incrementCounter() {
    lifespan++;
    if (lifespan % 3 == 0) {
      score += 1;
    }
  }

}

