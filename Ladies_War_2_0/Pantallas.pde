  PImage pantalla0;
  PImage pantalla1;
  PImage pantalla2;
  PImage pantalla3;
  PImage pantalla4;
  PImage pantalla5;

class Pantalla{
 
  int p;

  

  void inicio(){
    image(inicio,0,0);
    
    if(key == 'f'){
      start = false;
      p = 1;
    }

  }
  
    
  void introduccion(){
    image(introduccion,0,0);
        
    if(key == 'y'){
      start = false;
      p = 2;
    }
  }
  
  void instrucciones(){
    image(instrucciones,0,0);
        
    if(key == 't'){
      start = false;
      p = 3;
    }
  }

  void seleccion(){
    image(seleccion,0,0);
    
     keyPressed();
        if ((key == 'k') && (l==0)) {
          jugador1 = 1;
          l=1;
       } else {
        if ((key == 'k') && (l==1) && jugador1!=1) {
          jugador2 = 1;
          p=4;
        }
      }

      if ((key == 'l') && (l==0)) {
        jugador1 = 2;
        l=1;
      } else {
        if ((key == 'l') && (l==1) && jugador1!=2) {
          jugador2 = 2;
          p=4;
        }
      }

      if ((key == 'ñ') && (l==0)) {
        jugador1 = 3;
        l=1;
      } else {
        if ((key == 'ñ') && (l==1) && jugador1!=3) {
          jugador2 = 3;
          p=4;
        }
      }
      if ((key == 'o') && (l==0)) {
        jugador1 = 4;
        l=1;
      } else {
        if ((key == 'o') && (l==1) && jugador1!=4) {
          jugador2 = 4;
          p=4;
        }
      }
      if ((key == 'p') && (l==0)) {
        jugador1 = 5;
        l=1;
      } else {
        if ((key == 'p') && (l==1) && jugador1!=5) {
          jugador2 = 5;
          p=4;
        }
      }
      
  
  }

  void pelea(){
  image(pelea,0,0);
  
     if (jugador1 == 1) {
    personaje1.display();
  }

  if (jugador1 == 2) {
    personaje2.display();
  }

  if (jugador1 == 3) {
    personaje3.display();
  }

  if (jugador1 == 4) {
    personaje4.display();
  }

  if(jugador1 == 5){
   personaje5.display();   
 }

  if (jugador2 == 1) {
    personaje6.display();  
  }
  if (jugador2 == 2) {
    personaje7.display();  
  }
  if (jugador2 == 3) {
    personaje8.display();  
  }
  if (jugador2 == 4) {
    personaje9.display();
  }
  if(jugador2 == 5){
   personaje10.display();
   } 

 }

  void fin(){
    
    image(ultima,0,0);
    
    if(key == 'x'){
      start = false;
      p = 0;
    }
    
    if(key == 'z'){
      exit();
    }
   

  }

  void display(){

    switch(this.p){

      case 0:

      inicio();   
      
      vida1 = 150;
      vida2 = 150;
      l=0;

      break;
      
      case 1:
      
      introduccion();
      
      break;
      
      case 2:
      
      instrucciones();
      
      break;

      case 3:

      seleccion();
     
      break;

      case 4:

      pelea();
      fill(255,0,0);
      noStroke();
      rect(93,53,vida1*1, 18);
      rect(650,53,vida2*1, 18);
      
        
    for(int i = 0; i < lluvia.length; i++){
    lluvia[i].fall();
    lluvia[i].show();

  }
      
      if(keyPressed){
      switch(key){
        case 'a':
          if((key == 'a') && l==1){
            vida2 -=10;
            l=2;
          }
        case 's':
          if((key == 's') && l==1){
            vida2 -=15;
            l=2;
          }
      }
    }
    
    switch(keyCode){
      case 16:
        if((keyCode == 16) && l==2){
          vida1 -= 10;
          l=1;
        }
      case 10:
        if((keyCode == 10) && l==2){
          vida1 -= 15;
          l=1;
        }
    }
        if(vida1<=0 || vida2<=0){
       p = 5;
     }
      

      break;

      case 5:
       fin();
      if (vida1<=0) {
      
      if(jugador2==1){
        personaje11.display();
      }
      if(jugador2==2){
        personaje12.display();
      }
      if(jugador2==3){
        personaje13.display();
      }
      if(jugador2==4){
        personaje14.display();
      }
      if(jugador2==5){
        personaje15.display();
      }
      
    } else if (vida2<=0) {
      
      if(jugador1 == 1){
        personaje11.display();
      }
      if(jugador1 == 2){
        personaje12.display();
      }
      if(jugador1 == 3){
        personaje13.display();
      }
      if(jugador1 == 4){
        personaje14.display();
      }
      if(jugador1==5){
        personaje15.display();
      }
    }

      break;

      

    }

  }

  void teclado(){
    

  }

}
