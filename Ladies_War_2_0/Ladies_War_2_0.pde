//LADIES WAR 2.0

//Musica
import ddf.minim.*;

Minim gestor;
AudioPlayer musica_fondo;

Lluvia[] lluvia = new Lluvia[500];

  PImage Clarke;
  PImage Lexa;
  PImage Canary;
  PImage Wynonna;
  PImage Allison;

int jugador1;
int jugador2;

int vida1 = 150;
int vida2 = 150;
int l=0;


Pantalla pantalla;


boolean start = true;
PImage inicio, introduccion, instrucciones, seleccion, pelea, ultima;

Clarke personaje1;
Lexa personaje2;
Canary personaje3;
Wynonna personaje4;
Allison personaje5;

Clarke personaje6;
Lexa personaje7;
Canary personaje8;
Wynonna personaje9;
Allison personaje10;

Clarke personaje11;
Lexa personaje12;
Canary personaje13;
Wynonna personaje14;
Allison personaje15;

void setup() {
  size(900,600);
  
  //musica
  gestor = new Minim(this);
  musica_fondo = gestor.loadFile("Perverse Instantiation.mp3");
  musica_fondo.setGain(-10);
  musica_fondo.loop();
  
  Clarke = loadImage("Clarke.png");
  Lexa = loadImage("Lexa.png");
  Canary = loadImage("Canary.png");
  Wynonna = loadImage("Wynonna.png");
  Allison = loadImage("Allison.png");
  
  //Jugador 1
  personaje1 = new Clarke(50,150);
  personaje2 = new Lexa(300,500);
  personaje3 = new Canary(300,500);
  personaje4 = new Wynonna(300,500);
  personaje5 = new Allison(300,500);
  
  //Jugador 2
  personaje6 = new Clarke(450,150);
  personaje7 = new Lexa(1500,500);
  personaje8 = new Canary(1500,500);
  personaje9 = new Wynonna(1500,500);
  personaje10 = new Allison(1500,500);
  
  //Ganador
  personaje11 = new Clarke(410,180);
  personaje12 = new Lexa(1400,600);
  personaje13 = new Canary(1400,660);
  personaje14 = new Wynonna(1420,670);
  personaje15 = new Allison(1400,680);
  
    
    for(int i = 0; i < lluvia.length; i++){
    lluvia[i] = new Lluvia();
  }
  
  //imagenes
  inicio = loadImage("Pantalla-inicio.png");
  introduccion = loadImage("pantalla-introduccion.png");
  instrucciones = loadImage("pantalla-instrucciones.png");
  seleccion = loadImage("Pantalla-seleccion.png");
  pelea = loadImage("pantalla-pelea.png");
  ultima = loadImage("pantalla-ganador.png");
 
  pantalla = new Pantalla();
  
}

void draw() {
  
  pantalla.display();

}


void keyPressed() {

  pantalla.teclado();

}
