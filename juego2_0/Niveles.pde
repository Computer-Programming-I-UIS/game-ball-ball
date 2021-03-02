class niveles {
  int radius = 40;
  int gamestate=1;
  float x = 50;
  float y= 490;
  float speedbolitaDA = 3;
  float speed2bolitaIA = 3;
  float speed3fondo=14;
  float speed2fondo=10;
  float speed1fondo=6;

  int direction = 1;
  float posicionfondo=0;
  int posxI=0;
  int posYI=0;
  //  float win=1245520.0;
  float posix;
  niveles() {
  }

  void level() {
    frameRate(30);
    //
    if (gamestate == 1) {

      //Limpiar el arreglo de enemigos
      while (enemigos.size() > 0) {
        enemigos.remove(0);
      }

      carabola1.menu();

      image(img2, posxI, posYI);
      image(imagenc1, 491, 550);
      image(imagenc2, 380, 550);
      // text(mouseX,100,100);
      //text(mouseY,100,200);
      //fill(0);
      if (mouseX>340 && mouseX < 477 && mouseY<510   && mouseY>370) {
        if (mousePressed == true)
        {
          gamestate =2;
        }
      }
      //
      if (mouseX>740 && mouseX < 894 && mouseY<510   && mouseY>365) {
        if (mousePressed == true)
        {
          exit();
        }
      }

      //creditos
      if (mouseX>544 && mouseX < 685 && mouseY<510   && mouseY>370) {
        if (mousePressed == true)
        {
          gamestate=85;
        }
      }
    }
    if (gamestate==85) {
      PFont mono;
      mono=loadFont("HighTowerText-Italic-48.vlw");
      textFont(mono);
      textSize(30);
      background(0);
      y4=y4-10;
      y5=y5-10;
      y6=y6-10;
      y7=y7-10;
      y8=y8-10;
      y9=y9-10;
      y10=y10-10;
      y11=y11-10;
      y12=y12-10;
      y13=y13-10;
      y14=y14-10;

      y15=y15-10;
      y16=y16-10;
      y17=y17-10;
      y18=y18-10;
      y19=y19-10;
      //y20=y20-10;

      frameRate(6);
      text("Ball Ball", 602, y4);
      text("Programa o Aplicacion:", 520, y5);
      text("Processing (Java)", 545, y6);
      text("Graficos:", 585, y7);
      text("Cristian Melo Reina", 525, y8);
      text("Jeyson Andres Sanchez Tolosa", 480, y9);
      text("Sonido:", 596, y10);
      text("Cristian Melo Reina", 530, y11);
      text("Jeyson Andres Sanchez Tolosa", 480, y12);
      text("Agradecimientos Especiales:", 500, y13);
      text("Creadores del juego original (Red Ball)", 440, y14);
      text("EU Producciones Musicales", 500, y15);
      text("Creadores del juego Geometry Dash", 460, y16);
      text("Enemigos en Ball Ball", 540, y17);
      text("Tutor Alex Mantilla", 540, y18);
      text("THE END ", 590, y19);
      //  delay(3000);
      fill(255, 0, 0);

      if ( (keyPressed && key == 32) || y19<-2) {
        gamestate = 1;
      }
    }
    if (gamestate==2) {
      image(imgN3, 0, 0);
      image(imgh, 1220, 15);
      text (mouseX, 100, 100);
      text (mouseY, 100, 200);
      fill(0);

      if (mouseX>1220 && mouseX<1268  && mouseY>18  && mouseY<62) {
        if (mousePressed == true)
        {
          gamestate =1;
        }
      }
      // nivel 1
      if (mouseX>376 && mouseX < 480 && mouseY<320   && mouseY>230) {
        if (mousePressed == true)
        {
          gamestate =0; // nivel 1
        }
      }
      // nivel 2
      else if (mouseX>565 && mouseX < 700 && mouseY<330   && mouseY>220) {
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


    //nivel 3
    else   if (gamestate==4) {
      carabola1.jugar();
      image(imgN5, posicionfondo, 0);


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
          fondox=0;
        }
      }
      posicionfondo-=speed3fondo;

      if (keyPressed && (key == CODED)) {// If it's a coded key}.
      }  



      if (abs(posicionfondo) > imgN5.width) posicionfondo = 0;
      image(imgN5, posicionfondo+imgN5.width, 0);
      image(imgN5, posicionfondo-imgN5.width, 0);
      image(imgh, 1220, 15);
      image(imgr, 1160, 15);
      carabolita.show();
      carabolita.mover();
    }



    //nivel 1 
    else if (gamestate==0) {
   carabolita.chocar(enemigos);
      carabola1.jugar();
      image(imgN, posicionfondo, 0);
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
      posicionfondo-=speed1fondo;

      if (keyPressed && (key == CODED)) {// If it's a coded key}.
      }// gamestate
      if (abs(posicionfondo) > imgN.width) posicionfondo = 0;
      image(imgN, posicionfondo+imgN.width, 0);
      image(imgN, posicionfondo-imgN.width, 0);
      image(imgh, 1220, 15);
      image(imgr, 1160, 15);

      carabolita.show();
      carabolita.mover();
   
      updateenemigos();
      //carabolita.bandera();
    }
    // nivel 2
    else if (gamestate==3) {
      carabola1.jugar();
      image(imgN, posicionfondo, 0);

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
      posicionfondo-=speed2fondo;

      if (keyPressed && (key == CODED)) {// If it's a coded key}.
      }// gamestate
      if (abs(posicionfondo) > imgN.width) posicionfondo = 0;
      image(imgN, posicionfondo+imgN.width, 0);
      image(imgN, posicionfondo-imgN.width, 0);
      image(imgh, 1220, 15);
      image(imgr, 1160, 15);
      carabolita.show();
      carabolita.mover();
      //carabolita.bandera();
    }
  }
}
