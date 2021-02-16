class niveles {
  int radius = 40;
  int gamestate=1;
  float x = 50;
  float y= 490;
  float speedbolitaDA = 3;
  float speed2bolitaIA = 3;
  float speed3fondo=3;
  int direction = 1;
  float posicionfondo=0;
  int posxI=0;
  int posYI=0;

  niveles() {
  }

  void level() {
    frameRate(30);
    //
    if (gamestate == 1) {
      image(img2, posxI, posYI);
      if (mousePressed == true)
      {
        gamestate =2;
      }
    }

    if (gamestate==2) {
      image(imgN3, 0, 0);
      text(mouseX, 100, 100);
      text(mouseY, 300, 100);
      if (mouseX>376 && mouseX < 480 && mouseY<320   && mouseY>230) {
        if (mousePressed == true)
        {
          gamestate =0; // nivel 1
        }
      }
      // nivel 2
      else if (mouseX>577 && mouseX < 692 && mouseY<320   && mouseY>230) {
        if (mousePressed == true)
        {
          gamestate =3; // nivel 2
        }
      }
      // nivel 3
      else if (mouseX>787 && mouseX < 897 && mouseY<320   && mouseY>230) {
        if (mousePressed == true)
        {
          gamestate =4; // nivel 3
        }
      }
    }
    //nivel 2


    else   if (gamestate==3) {
      image(imgN4, posicionfondo, 0);
      ellipse(1200, 40, 20, 20);

      fill(0);

      if (mouseX>1180 && mouseX<1220  && mouseY>20  && mouseY<60) {
        if (mousePressed == true)
        {
          gamestate =2;
        }
      }
      if (keyPressed && (key == CODED)) {// If it's a coded key}.

        if (keyCode == LEFT) { // If it's the right arrow
          posicionfondo += speed3fondo; //izquierda
          x -= speed;
          x+=speed;//derecha
        //  movimientobola+= speed;
          // Face left

          if  (  movimientobola<0) {
          //  direction = -direction;
            //speed2bolitaIA=0;
            speed=0;
          } else {
            ///speedbolitaDA = 3;
            //speed2bolitaIA = 3;
             speed=7;
             movimientobola-= speed;
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

        if (keyCode == DOWN) {
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
      }
      if (abs(posicionfondo) > imgN4.width) posicionfondo = 0;
      image(imgN4, posicionfondo+imgN4.width, 0);
      image(imgN4, posicionfondo-imgN4.width, 0);
      ellipse(1200, 40, 20, 20);

      fill(0);
    } else   if (gamestate==4) {
      image(imgN4, 0, 0);


      if (mouseX>1180 && mouseX<1220  && mouseY>20  && mouseY<60) {
        if (mousePressed == true)
        {
          gamestate =2;
        }
      }
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

        if (keyCode == DOWN) {
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
      }
      if (abs(posicionfondo) > imgN4.width) posicionfondo = 0;
      image(imgN4, posicionfondo+imgN4.width, 0);
      image(imgN4, posicionfondo-imgN4.width, 0);
      ellipse(1200, 40, 20, 20);

      fill(0);
    }
    //nivel1 jugar
    else if (gamestate==0) {

      image(imgN, posicionfondo, 0);
      carabolita.show();
      carabolita.mover();

      imageMode(CORNER);


      if (mouseX>1180 && mouseX<1220  && mouseY>20  && mouseY<60) {
        if (mousePressed == true)
        {
          gamestate =2;
        }
      }
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

        if (keyCode == DOWN) {
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
      if (abs(posicionfondo) > imgN.width) posicionfondo = 0;
      image(imgN, posicionfondo+imgN.width, 0);
      image(imgN, posicionfondo-imgN.width, 0);
      ellipse(1200, 40, 20, 20);

      fill(0);
    }
  }
}
