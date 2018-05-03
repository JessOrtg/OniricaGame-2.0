interface Personajes
{
void display();
}

class Insomnia implements Personajes {
  String nombre;
  String tipo;
  int ataque;
  int defensa;
  
  Insomnia(String nombre_, String tipo_, int ataque_, int defensa_){
  nombre = nombre_;
  tipo = tipo_;
  ataque = ataque_;
  defensa = defensa_;
}

  void display(){
    
         insomnia = loadImage("insomnia.png");
         image(insomnia, 0,0);

  }
}



class BunnyBoy implements Personajes {
  String nombre;
  String tipo;
  int ataque;
  int defensa;
  
  BunnyBoy(String nombre_, String tipo_, int ataque_, int defensa_){
  nombre = nombre_;
  tipo = tipo_;
  ataque = ataque_;
  defensa = defensa_;
  }
  
  void display(){
    
         bunnyboy = loadImage("bunny boy.png");
         image(bunnyboy, 0, 0);

  }
  
  }



class No implements Personajes {
  String nombre;
  String tipo;
  int ataque;
  int defensa;
  
  No (String nombre_, String tipo_, int ataque_, int defensa_){
  nombre = nombre_;
  tipo = tipo_;
  ataque = ataque_;
  defensa = defensa_;
  }
  
  void display(){
    
        no = loadImage("no.png");
         image(no, 0,0);

  }
}


class Si implements Personajes {
  String nombre;
  String tipo;
  int ataque;
  int defensa;
  
  Si(String nombre_, String tipo_, int ataque_, int defensa_){
  nombre = nombre_;
  tipo = tipo_;
  ataque = ataque_;
  defensa = defensa_;
  }
  
  
  void display(){
    
         si = loadImage("si.png");
         image(si, 0, 0);

  }
  
  }




class Hipnos implements Personajes {
  String nombre;
  String tipo;
  int ataque;
  int defensa;
  
  Hipnos(String nombre_, String tipo_, int ataque_, int defensa_){
  nombre = nombre_;
  tipo = tipo_;
  ataque = ataque_;
  defensa = defensa_;
  }
  
  
  void display(){
    
         hipnos = loadImage("hipnos.png");
         image(hipnos, 0, 0);

  }
  
  }