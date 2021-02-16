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
      text(mouseX, 100, 100);
      text(mouseY, 300, 100);
      fill(0);
      if (mouseX>540 && mouseX < 670 && mouseY<280   && mouseY>150) {
        if (mousePressed == true)
        {
          gamestate =2;
        }
      }
      //
      if (mouseX>540 && mouseX < 670 && mouseY<610   && mouseY>470) {
        if (mousePressed == true)
        {
          exit();
        }
      }
    }
    if (gamestate==2) {
      image(imgN3, 0, 0);

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
      carabolita.show();
      carabolita.mover();

 if (mouseX>1220 && mouseX<1268  && mouseY>18  && mouseY<62) {
        if (mousePressed == true)
        {
           gamestate =1;
          
        }
      }
//
      if (mouseX>1160 && mouseX<1210  && mouseY>18  && mouseY<60) {
        if (mousePressed == true)
        {
          //  gamestate =3;
          posicionfondo=0;
          movimientobola=50;
        }
      }
      if (keyPressed && (key == CODED)) {// If it's a coded key}.

        if (keyCode == LEFT) { // If it's the right arrow
          posicionfondo += speed3fondo; //izquierda
          // x -= speed;
          //x+=speed;//derecha
          //  movimientobola+= speed;
          // Face left
          println(movimientobola);
          if  (  movimientobola<3) {
            //  direction = -direction;
            //speed2bolitaIA=0;
            speed=0;
          } else {
            ///speedbolitaDA = 3;
            //speed2bolitaIA = 3;
            speed=5;
            // movimientobola-= 12;
          }
        }
        //  movimientobola= 50;
        if (keyCode == RIGHT) { // If it's the right arrow
          posicionfondo-=speed3fondo;
          //speed=7;
          println(movimientobola);
          // x+= speedbolitaDA;

          if (movimientobola> 1196) {
            speed=0;
            // speedbolitaDA=0;
            //speed2bolitaIA = 3;
          }/* else if  ( radius > x) {
           //  direction = -direction;
           // speed2bolitaIA=0;
           } */
          else {
            //   speedbolitaDA = 3;
            //  speed2bolitaIA = 3;
            speed=5;
          }
        }

        /*    if (keyCode == DOWN) {
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
         }*/
      }
      if (abs(posicionfondo) > imgN4.width) posicionfondo = 0;
      image(imgN4, posicionfondo+imgN4.width, 0);
      image(imgN4, posicionfondo-imgN4.width, 0);
      image(imgh, 1220, 15);
      image(imgr, 1160, 15);
    }
    //nivel 3
    else   if (gamestate==4) {
      image(imgN5, posicionfondo, 0);
      carabolita.show();
      carabolita.mover();

 if (mouseX>1220 && mouseX<1268  && mouseY>18  && mouseY<62) {
        if (mousePressed == true)
        {
           gamestate =1;
          
        }
      }
//
      if (mouseX>1160 && mouseX<1210  && mouseY>18  && mouseY<60) {
        if (mousePressed == true)
        {
          //  gamestate =3;
          posicionfondo=0;
          movimientobola=50;
        }
      }
      if (keyPressed && (key == CODED)) {// If it's a coded key}.

        if (keyCode == LEFT) { // If it's the right arrow
          posicionfondo += speed3fondo; //izquierda
          //  x -= speed2bolitaIA;  //derecha

          // Face left

          if  ( movimientobola<3) {
            // direction = -direction;
            //speed2bolitaIA=0;
            speed=0;
          } else {
            //speedbolitaDA = 3;
            //speed2bolitaIA = 3;
            speed=5;
          }
        }
        if (keyCode == RIGHT) { // If it's the right arrow
          posicionfondo-=speed3fondo;
          // x+= speedbolitaDA;
          if (movimientobola> 1196) {
            speed=0;
            // speedbolitaDA=0;
            //speed2bolitaIA = 3;
          }/* else if  ( radius > x) {
           //  direction = -direction;
           // speed2bolitaIA=0;
           } */
          else {
            //   speedbolitaDA = 3;
            //  speed2bolitaIA = 3;
            speed=5;
          }
        }

        /*     if (keyCode == DOWN) {
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
         }*/
      }
      if (abs(posicionfondo) > imgN5.width) posicionfondo = 0;
      image(imgN5, posicionfondo+imgN5.width, 0);
      image(imgN5, posicionfondo-imgN5.width, 0);
      image(imgh, 1220, 15);
      image(imgr, 1160, 15);
    }
    //nivel 1 
    else if (gamestate==0) {

      image(imgN, posicionfondo, 0);
  text(mouseX, 100, 100);
       text(mouseY, 300, 100);
       fill(0);
      carabolita.show();
      carabolita.mover();

      imageMode(CORNER);
 if (mouseX>1220 && mouseX<1268  && mouseY>18  && mouseY<62) {
        if (mousePressed == true)
        {
           gamestate =1;
          
        }
      }
//
      if (mouseX>1160 && mouseX<1210  && mouseY>18  && mouseY<60) {
        if (mousePressed == true)
        {
          // gamestate =3;
          posicionfondo=0;
          movimientobola=50;
        }
      }
      if (keyPressed && (key == CODED)) {// If it's a coded key}.

        if (keyCode == LEFT) { // If it's the right arrow
          posicionfondo += speed3fondo; //izquierda
          //     x -= speed2bolitaIA;  //derecha

          // Face left

          if  ( movimientobola < 3) {
            // direction = -direction;
            //  speed2bolitaIA=0;
            speed=0;
          } else {
            // speedbolitaDA = 3;
            //speed2bolitaIA = 3;
            speed=5;
          }
        }
        if (keyCode == RIGHT) { // If it's the right arrow
          posicionfondo-=speed3fondo;
          //  x+= speedbolitaDA;

          if (movimientobola > 1196) {
            speed=0;
            //  speedbolitaDA=0;
            // speed2bolitaIA = 3;
          } /*else if  ( radius > x) {
           direction = -direction;
           speed2bolitaIA=0;
           } 
           */
          else {
            //  speedbolitaDA = 3;
            //speed2bolitaIA = 3;
            speed=5;
          }
        }

        /* if (keyCode == DOWN) {
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
         */
      }// gamestate
      if (abs(posicionfondo) > imgN.width) posicionfondo = 0;
      image(imgN, posicionfondo+imgN.width, 0);
      image(imgN, posicionfondo-imgN.width, 0);
      image(imgh, 1220, 15);
      image(imgr, 1160, 15);
    }
  }
}
