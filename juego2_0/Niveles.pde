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

      if (!sonidomenu.isPlaying()) {
        sonidomenu.play(1);
        sonidomenu.amp(0.075);
      } else if (nivel_2.isPlaying()) {
        nivel_2.stop();
      }


      image(img2, posxI, posYI);
     text(mouseX, 100, 100);
      text(mouseY, 300, 100);
      fill(0);
      if (mouseX>340 && mouseX < 477 && mouseY<510   && mouseY>370) {
        if (mousePressed == true)
        {
          gamestate =2;
        }
      }
      //
      if (mouseX>740 && mouseX < 894 && mouseY<510   && mouseY>370) {
        if (mousePressed == true)
        {
          exit();
        }
      }
      //creditos
       if (mouseX>545 && mouseX < 685 && mouseY<510   && mouseY>370) {
        if (mousePressed == true)
        {
           background(0);
y1=y1-10;
y2=y2-10;
y3=y3-10;
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
  text("Ball Ball", 602, y1);
  text("Productores y Programadores:",490, y2);
  text("Jeyson Andres Sanchez Tolosa", 480, y3);
  text("Cristian Melo Reina", 535, y4);
  text("Programa o Aplicacion:", 520, y5);
  text("Processing (Java)", 545, y6);
  text("Graficos:", 585, y7);
  text("Cristian Melo Reina", 525, y8);
  text("Jeyson Andres Sanchez Tolosa", 480, y9);
  text("Sonido:", 596, y10);
  text("Cristian Melo Reina", 530, y11);
  text("Jeyson Andres Sanchez Tolosa", 480, y12);
  text("Agradecimientos Especiales:", 500, y13);
  text("Creadores del juego original (Red Ball)",440, y14);
  text("EU Producciones Musicales", 500, y15);
  text("Creadores del juego Geometry Dash", 460, y16);
  text("Enemigos en Ball Ball", 540, y17);
  text("Tutor Alex Mantilla", 540, y18);
  text("THE END ",590, y19);
    fill(255, 0, 0);
    if (y19<-2){
      exit();
    }

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
      if (!nivel_2.isPlaying()) {
        nivel_2.play(1);
        nivel_2.amp(0.075);
      }
      if (sonidomenu.isPlaying()) {
        sonidomenu.stop();
      }
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
        
          posicionfondo=0;
          movimientobola=50;
        }
      }
      if (keyPressed && (key == CODED)) {

        if (keyCode == LEFT) { 
          posicionfondo += speed3fondo; //izquierda


          println(movimientobola);
          if  (  movimientobola<3) {
          } else {


            println(movimientobola);
            if  (  movimientobola<3) {

              speed=0;
            } else {


              speed=5;
            }
          }

          if (keyCode == RIGHT) { 
            posicionfondo-=speed3fondo;

            println(movimientobola);


            if (movimientobola> 1196) {
              speed=0;
            } else {

              speed=5;
            }
          }
        }
      }
      if (abs(posicionfondo) > imgN4.width) posicionfondo = 0;
      image(imgN4, posicionfondo+imgN4.width, 0);
      image(imgN4, posicionfondo-imgN4.width, 0);
      image(imgh, 1220, 15);
      image(imgr, 1160, 15);
    }
    //nivel 3
    else   if (gamestate==4) {
      if (!nivel_2.isPlaying()) {
        nivel_2.play(1);
        nivel_2.amp(0.075);
      }
      if (sonidomenu.isPlaying()) {
        sonidomenu.stop();
      }
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
          
          posicionfondo=0;
          movimientobola=50;
          x1=300;
          x2=460;
          x3=460;
          x22=440;
          x4=780;
          x5=1100;
          x=0;
          x6=460;
          x7=440;
          x72=460;
          x8=620;
          x9=990;
          x10=1310;
        }
      }
      if (keyPressed && (key == CODED)) {

        if (keyCode == LEFT) { 
          posicionfondo += speed3fondo; //izquierda
          x1+=speed3fondo;
          x2+=speed3fondo;
          x22+=speed3fondo;
          x3+=speed3fondo;
          x4+=speed3fondo;
          x5+=speed3fondo;
          x6+=speed3fondo;
          x7+=speed3fondo;
          x72+=speed3fondo;
          x8+=speed3fondo;
          x9+=speed3fondo;
          x10+=speed3fondo;  

          if  ( movimientobola<3) {


            speed=0;
          } else {


            speed=5;
          }
        }
        if (keyCode == RIGHT) { 
          posicionfondo-=speed3fondo;
          x1-=speed3fondo;
          x2-=speed3fondo;
          x22-=speed3fondo;
          x3-=speed3fondo;
          x4-=speed3fondo;
          x5-=speed3fondo;
          x6-=speed3fondo;
          x7-=speed3fondo;
          x72-=speed3fondo;
          x8-=speed3fondo;
          x9-=speed3fondo;
          x10-=speed3fondo;

          if (movimientobola> 1196) {
            speed=0;
          } else {

            speed=5;
          }
        }
      } 
      println(posicionfondo);
      if (abs(posicionfondo) > imgN5.width) posicionfondo = 0;
      image(imgN5, posicionfondo+imgN5.width, 0);
      image(imgN5, posicionfondo-imgN5.width, 0);
      image(imgh, 1220, 15);
      image(imgr, 1160, 15);
      quad(x1, 500, x1, 520, x6, 520, x6, 500);
      quad(x2, 420, x22, 420, x7, 520, x72, 520);
      quad(x3, 420, x3, 440, x8, 440, x8, 420);
      quad(x4, 340, x4, 360, x9, 360, x9, 340);
      quad(x5, 420, x5, 440, x10, 440, x10, 420);
      fill(0);
    }
    //nivel 1 
    else if (gamestate==0) {
      if (!nivel_2.isPlaying()) {
        nivel_2.play(1);
        nivel_2.amp(0.075);
      }
      if (sonidomenu.isPlaying()) {
        sonidomenu.stop();
      }
      image(imgN, posicionfondo, 0);
      //   text(mouseX, 100, 100);
      // text(mouseY, 300, 100);
      //fill(0);
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

          posicionfondo=0;
          movimientobola=50;
        }
      }
      if (keyPressed && (key == CODED)) {

        if (keyCode == LEFT) { 
          posicionfondo += speed3fondo; //izquierda
          //derecha



          if  ( movimientobola < 3) {

            speed=0;
          } else {

            speed=5;
          }
        }
        if (keyCode == RIGHT) {
          posicionfondo-=speed3fondo;


          if (movimientobola > 1196) {
            speed=0;
          } else {

            speed=5;
          }
        }
      }// gamestate
      if (abs(posicionfondo) > imgN.width) posicionfondo = 0;
      image(imgN, posicionfondo+imgN.width, 0);
      image(imgN, posicionfondo-imgN.width, 0);
      image(imgh, 1220, 15);
      image(imgr, 1160, 15);
    }
  }
}
