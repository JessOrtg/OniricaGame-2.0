void pantallaPrincipal(){
     
  inicio = loadImage("inicio.jpg");
         image(inicio,0,0);
         
    font = loadFont("NovaSOLID-SOLID-48.vlw");
    textFont(font);
    textSize(70);
    fill(#90677B);
    text("O N I R I C A", 170,150);
    rect(230,380,140,40);
    textSize(25);
    fill(#203648);
    text("J U G A R", 265,407);
    textSize(20);
    text("D o s  j u g a d o r e s", 230, 450);
   
 }


void pantallaHistoria(){
  
       historia = loadImage("historia.jpg");
         image(historia,0,0);
         fill(#907F7F);
         rect(50,500,140,40);
    textSize(25);
    fill(#203648);
    text("c o n t i n u a r", 60,530);
            
           font = loadFont("FleaMarketFinds-48.vlw");
           textFont(font);
           textSize(17);
           fill(255);
           text("En el inconsciente de los niños habitan seres oníricos ", 20,150);
           text("que son los encargados de los sueños de estos. ", 20,170);
           text("Ellos le llaman a este lugar 'el cuarto oscuro'", 20,190);
           text("ya que aparecen desde que el infante empieza a tener ", 20,210);
           text("uso de razón y empieza a almacenar recuerdos y a pensar,", 20,230);
           text("por lo que al inicio no hay nada ahí adentro. ", 20,250);
           text("Con el paso del tiempo el niño va llenando y", 20,270);
           text("decorando este cuarto con todo aquello que para él es importante ", 20,290);
           text("Hay diferentes tipos de seres oníricos: Los que producen dulces sueños como BunnyBoy y Si", 20,310);
           text("Los más reflexivos y profundos que utilizan los recuerdos de los niños como Insomnia e Hipnos ", 20,330);
           text("Y por ultimo, las pesadillas, son malvados, pero en el fondo tienen", 20,350);
           text("un propisito: hacer más fuertes a los niños, haciendo que ", 20,370);
           text("se enfrenten a sus mayores miedos... un ejemplo de este tipo es No. ", 20,390);
           text("Cada que un niño duerme ellos luchan para ver quien será el creador ", 20,410);
           text("de su sueño... ¿estás listo?", 20,430);
        }

void pantallaPersonajes(){
         
  seleccion = loadImage("seleccion.jpg");
         image(seleccion,0,0);

    
    font = loadFont("OCRAExtended-48.vlw");
    textSize(18);
    fill(#ACDEDC);
    text("Un nuevo sueño se ha detectado, ¿quién será su guía?", 15,25);
    textSize(15);
    text("Elije primero jugador 1, luego jugador 2", 100,50);
    
    textFont(font);
    textSize(15);
    fill(#ACDEDC);
    text("I N S O M N I A", 60,90);
    textSize(13);
    text("Tipo: Misterioso", 80,280);
    text("Ataque: 5", 80,293);
    text("Defensa: 7", 80,306);
    fill(#C12F4A);
    text("Selecciona con a", 80,316);
    
    textSize(15);
    fill(#ACDEDC);
    text("B U N N Y  B O Y", 235,90);
    textSize(13);
    text("Tipo: Dulces sueños", 250,280);
    text("Ataque: 5", 250,293);
    text("Defensa: 6", 250,306);
    fill(#C12F4A);
    text("Selecciona con b", 250,316);
    
    textSize(15);
    fill(#ACDEDC);
    text("N O", 450,90);
    textSize(13);
    text("Tipo: Pesadilla", 430,280);
    text("Ataque: 8", 430,293);
    text("Defensa: 2", 430,306);
    fill(#C12F4A);
    text("Selecciona con c", 430,316);
    
    textSize(15);
    fill(#ACDEDC);
    text("S I", 190,350);
    textSize(13);
    text("Tipo: Dulces sueños", 130,500);
    text("Ataque: 7", 130,515);
    text("Defensa: 4", 130,528);
    fill(#C12F4A);
    text("Selecciona con d", 130,538);
    
    textSize(15);
    fill(#ACDEDC);
    text("H I P N O S", 325,350);
    textSize(13);
    text("Tipo: Misterioso", 310,500);
    text("Ataque: 10", 310,515);
    text("Defensa: 5", 310,528);
    fill(#C12F4A);
    text("Selecciona con e", 310,538);
    
    
        pushMatrix();
        translate(55,100);
        Insomnia.display();
        popMatrix();
        
        pushMatrix();
        translate(230, 100);
        scale(.9);
        BunnyBoy.display();
        popMatrix();
        
        pushMatrix();
        translate(410,85);
        No.display();
        popMatrix();
        
        pushMatrix();
        scale(.8);
        translate(170,445);
        Si.display();
        popMatrix();
        
        pushMatrix();
        translate(320,340);
        scale(.8);
        Hipnos.display();
        popMatrix();

   
}

     
void pantallaCombate(){
       pelea = loadImage("pelea.jpg");
         image(pelea,0,0);
           
           textSize(25);
           fill(255);
           text("VS", 280,50);
           personaje1();
           personaje2();
           turnos();
           
        }
        
void pantallaFinal(){

  ganador = loadImage("ganador.jpg");
         image(ganador,0,0);
           
         textSize(20);
           fill(255);
           text("DA CLICK SOBRE LA PANTALLA PARA VOLVER A JUGAR", 20,500);
       reinicio();
        }
     


void seleccion(){
  if (jugador1 == 0){
      if (keyPressed == true){
     switch(key){
       case 'a':
        jugador1 = 1;
       break;
       case 'b':
         jugador1 = 2;
       break;
       case 'c':
         jugador1 = 3;
       break;
       case 'd':
         jugador1 = 4;
       break;
      case 'e':
         jugador1 = 5;
       break;
      }
      }

     }
  }
  
  void seleccion2(){
  if (jugador2 == 0){
      if (keyPressed == true){
     switch(key){
       case 'a':
        if (jugador1 != 1){
        jugador2 = 1;
         pantalla = 3;
        }
       break;
       case 'b':
         if (jugador1 != 2){
        jugador2 = 2;
         pantalla = 3;
        }
       break;
       case 'c':
         if (jugador1 != 3){
        jugador2 = 3;
         pantalla = 3;
        }
       break;
       case 'd':
         if (jugador1 != 4){
        jugador2 = 4;
         pantalla = 3;
        }
       break;
      case 'e':
        if (jugador1 != 5){
        jugador2 = 5;
         pantalla = 3;
        }
       break;
      }
      }

     }
  }

void cambio(){
      if(jugador1 != 0 && jugador2 !=0){
        pantalla = 3;
      }
     }

void personaje1(){
      switch(jugador1){
       case 1:
              pushMatrix();
              translate(50,180);
              scale(1.2);
              Insomnia.display();
              popMatrix();
              textSize(15);
              fill(#FFFCFC);
              text("JUGADOR UNO ATACA PRIMERO", 20, 510);
              text("Q = AtaqueCreación", 20, 530);
             break;
       case 2:
              pushMatrix();
              translate(60, 200);
              BunnyBoy.display();
              popMatrix();
              textSize(15);
              fill(#FFFCFC);
              text("JUGADOR UNO ATACA PRIMERO", 20, 510);
              text("Q = AtaqueCreación", 20, 530);
                break;
       case 3:
               pushMatrix();
              translate(60,200);
              //scale(.8);
              No.display();
              popMatrix();
              textSize(15);
              fill(#FFFCFC);
              text("JUGADOR UNO ATACA PRIMERO", 20, 510);
              text("Q = AtaqueRecuerdo",20, 530);
             break;
       case 4:
               pushMatrix();
              translate(60,220);
              //scale(.8);
              Si.display();
              popMatrix();
              textSize(12);
              textSize(15);
              fill(#FFFCFC);
              text("JUGADOR UNO ATACA PRIMERO", 20, 510);
              text("Q = AtaqueRecuerdo", 20, 530);
             break;
       case 5:
                pushMatrix();
              translate(60,200);
              //scale(.7);
              Hipnos.display();
              popMatrix();
             textSize(15);
              fill(#FFFCFC);
              text("JUGADOR UNO ATACA PRIMERO", 20, 510);
              text("Q = AtaqueCreación", 20, 530);
             break;
      }
      }

void personaje2(){
switch(jugador2){
       case 1:
              pushMatrix();
              translate(380,180);
              scale(1.2);
              Insomnia.display();
              popMatrix();
              textSize(15);
              fill(#FFFCFC);
               text("JUGADOR DOS ATACA SEGUNDO", 360, 510);
              text("P = AtaqueCreación", 360, 530);
           
             break;
       case 2:
              pushMatrix();
              translate(390,180);
              //scale(.7);
              BunnyBoy.display();
              popMatrix();
               textSize(15);
              fill(#FFFCFC);
          text("JUGADOR DOS ATACA SEGUNDO", 360, 510);
              text("P = AtaqueCreación", 360, 530);
                break;
       case 3:
               pushMatrix();
              translate(380,180);
              //scale(.8);
              No.display();
              popMatrix();
               textSize(15);
              fill(#FFFCFC);
            text("JUGADOR DOS ATACA SEGUNDO", 360, 510);
              text("P = AtaqueRecuerdo", 360, 530);
             break;
       case 4:
               pushMatrix();
              translate(380,180);
              scale(1.1);
              Si.display();
              popMatrix();
              textSize(15);
              fill(#FFFCFC);
              text("JUGADOR DOS ATACA SEGUNDO", 360, 510);
              text("P = AtaqueRecuerdo", 360, 530);
             break;
       case 5:
                pushMatrix();
              translate(380,180);
              //scale(.7);
              Hipnos.display();
              popMatrix();
               textSize(15);
              fill(#FFFCFC);
               text("JUGADOR DOS ATACA SEGUNDO", 360, 510);
              text("P = AtaqueCreación", 360, 530);
             break;
      }
      }
      
      
void ganador1(){
switch(jugador1){
       case 1:
              pushMatrix();
              translate(170,160);
              scale(1.5);
              Insomnia.display();
              popMatrix();
              textSize(30);
              fill(#ACDEDC);
              text("INSOMNIA GANA", 180, 100);
              
           
             break;
       case 2:
              pushMatrix();
              translate(170,160);
              scale(1.5);
              BunnyBoy.display();
              popMatrix();
               textSize(30);
              fill(#ACDEDC);
               text("BUNNY BOY GANA", 180, 100);
           
                break;
       case 3:
               pushMatrix();
              translate(170,160);
              scale(1.5);
              No.display();
              popMatrix();
               textSize(30);
              fill(#ACDEDC);
               text("NO GANA", 220, 100);
             break;
       case 4:
               pushMatrix();
              translate(170,160);
              scale(1.5);
              Si.display();
              popMatrix();
               textSize(30);
              fill(#ACDEDC);
               text("SI GANA", 230, 100);
             break;
       case 5:
                pushMatrix();
              translate(170,160);
              scale(1.5);
              Hipnos.display();
              popMatrix();
               textSize(30);
              fill(#ACDEDC);
               text("HIPNOS GANA", 180, 100);
             break;
      }
      }
   
   



void ganador2(){
switch(jugador2){
      case 1:
              pushMatrix();
              translate(170,160);
              scale(1.5);
              Insomnia.display();
              popMatrix();
              textSize(30);
              fill(#ACDEDC);
              text("INSOMNIA GANA", 180, 100);
              
           
             break;
       case 2:
              pushMatrix();
              translate(170,160);
              scale(1.5);
              BunnyBoy.display();
              popMatrix();
               textSize(30);
              fill(#ACDEDC);
               text("BUNNY BOY GANA", 180, 100);
           
                break;
       case 3:
               pushMatrix();
              translate(170,160);
              scale(1.5);
              No.display();
              popMatrix();
               textSize(30);
              fill(#ACDEDC);
               text("NO GANA", 220, 100);
             break;
       case 4:
               pushMatrix();
              translate(170,160);
              scale(1.5);
              Si.display();
              popMatrix();
               textSize(30);
              fill(#ACDEDC);
               text("SI GANA", 180, 100);
             break;
       case 5:
                pushMatrix();
              translate(170,160);
              scale(1.5);
              Hipnos.display();
              popMatrix();
               textSize(30);
              fill(#ACDEDC);
               text("HIPNOS GANA", 180, 100);
             break;
      }
      }
   

void turnos(){
if(turno == 1){
  if (vida2 <= 0){
  turno = 3;
  }
  fill(0,150,0);
  rect(390,30,vida2,30);
  if (keyPressed){
  switch(key){
  case 'q': 
  vida2 = vida2 - 25;
   turno = 2;
   player1.play();
  }
  }
   }


if (turno == 2){
  if (vida1 <= 0){
  turno = 4;
  }
  fill(0,150,0);
  rect(30,30,vida1,30);
  if (keyPressed){
  switch(key){
  case 'p': 
  vida1= vida1 - 25;
   turno = 1;
   player2.play();
  }
  }
   }
   
   if (turno == 3){
     pantallaFinal();
     ganador1();
   
   }
   
   if (turno == 4){
     pantallaFinal();
     ganador2();
   
   }
}

void reinicio(){
   if (((mouseX> -230) && (mouseX< x +370) && (mouseY> y -380) && (mouseY< y +420) && (mousePressed))){
   pantalla = 0;
   jugador1 = 0;
   jugador2 = 0;
   turno = 1;
   vida1 = 150;
   vida2 = 150;
   
   }



}