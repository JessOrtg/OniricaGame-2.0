//Jessica Ortega Diaz
//Proyecto 3
import processing.sound.*;
SoundFile player1;
SoundFile player2;
SoundFile onirica;

Insomnia Insomnia;
BunnyBoy BunnyBoy;
No No;
Si Si;
Hipnos Hipnos;

int x,y;
int pantalla = 0;
PFont font;
int jugador1 = 0;
int jugador2 = 0;
int turno = 1;
int vida1 = 150;
int vida2 = 150;

PImage insomnia;
PImage bunnyboy;
PImage si, no, hipnos;
PImage inicio, historia, seleccion, pelea, ganador;


void setup(){  
size(600, 600);

player1 = new SoundFile(this,"onirica4_01.mp3");
player2 = new SoundFile(this,"onirica 5_01.mp3");
onirica = new SoundFile(this,"onirica.mp3");

onirica.play();
onirica.loop();


Insomnia = new Insomnia ("Insomnia","Misteriso", 25, 0);
BunnyBoy = new BunnyBoy ("BunnyBoy", "Dulces sueños", 25, 0);
No = new No ("No", "Pesadilla", 25, 0);
Si = new Si ("Si", "Dulces sueños", 25, 0);
Hipnos = new Hipnos ("Hipnos","Misterioso", 25, 0);
}
   

void draw(){
     switch(pantalla){
       case 0:
       pantallaPrincipal();
     if((mouseX> -230) && (mouseX< x +370) && (mouseY> y -380) && (mouseY< y +420) && (mousePressed)){
       pantalla = 1;
          }
          break;
       case 1:
       pantallaHistoria();
       if((mouseX> -50) && (mouseX< x +150) && (mouseY> y -580) && (mouseY< y +600) && (mousePressed)){
       pantalla = 2;
          }
        break;
        case 2:
        if (pantalla == 2){
        pantallaPersonajes();
         seleccion(); 
         cambio();
     if (jugador1 < 6){
          seleccion2();
         }
       } 
        break;
        case 3:
     if (pantalla == 3){
       pantallaCombate();
          }
       break;
     }
   }
     
     
   
 

      


      
    
    