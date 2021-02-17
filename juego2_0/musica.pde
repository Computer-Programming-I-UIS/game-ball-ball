class musica{
  
 
 musica(){} 
 
void menu(){
  if (!sonidomenu.isPlaying()) {
        sonidomenu.play(1);
        sonidomenu.amp(0.075);
      } else if (nivel_2.isPlaying()) {
        nivel_2.stop();
      }
}
 void jugar(){
   if (!nivel_2.isPlaying()) {
    nivel_2.play(1);
    nivel_2.amp(0.075);
  }
  if (sonidomenu.isPlaying()) {
    sonidomenu.stop();
  }
 }
}
