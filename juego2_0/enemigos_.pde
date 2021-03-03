class enemigo {
  
  float posix;
  int altr, cabez;
  int tipo;
  
  
  
  enemigo(int t) {
    posix=width;
    tipo=t;
    switch(tipo) {
    case 0: 
      altr=100;
      cabez=70;
      break;
    case 1: 
      altr=60;
      cabez=90;
      break;
    case 2: 
      altr=80;
      cabez=70;
      break;
    }
  } 

  void carg() {
    switch(tipo) {
    case 0: 
      image(enm1, posix-enm1.width/2, height-groundHeight-enm1.height);
      break;
    case 1: 
      image(enm2, posix-enm2.width/2, height-groundHeight-enm2.height);
      break;
    }
  }

  void mov(float velocidad) {
    posix -= velocidad ;
  }

  boolean colisionar(float playerx, float playery, float playerarr, float playeraba) {
    float playerLeft = playerx - playerarr/ 2;
    float playerRight = playerx + playerarr / 2;
    float thisLeft = posix - altr / 2;
    float thisRight = posix + altr / 2;

    if (playerLeft < thisRight && playerRight > thisLeft) {
      float playerDown = playery - playeraba/ 2;
      float thisUp = cabez;
      if (playerDown < thisUp) {
        return true;
      }
    }
    return false;
  }
}
