class comun{
  float x;
  float y;
  float t;
  
  comun(float x_, float y_){
    x = x_;
    y = y_;
    this.t = 8;
  }
  
}

class Clarke extends comun  {
  //Atributos
  Clarke(float x_,float y_){
  super(x_,y_);
  x = x_;
  y = y_;
  }
  
  //Métodos
  void display() {
    pushMatrix();
    translate(x,y);
    scale(0.4,0.4);
    image(Clarke,x,y);
    popMatrix();
  }
  
}
  

class Lexa extends Clarke{
  Lexa(int x_, int y_){
    super(x_,y_);
    
  }
  
  void display(){
  pushMatrix();
  scale(0.4,0.4);
  image(Lexa,x,y);
  popMatrix();
  }

}

class Canary extends Clarke{
  Canary(int x_, int y_){
    super(x_,y_);
  
  }
  
  void display(){
  pushMatrix();
  scale(0.4,0.4);
  image(Canary,x,y);
  popMatrix();
  }
  
}

class Wynonna extends Clarke{
  Wynonna(int x_, int y_){
    super(x_,y_);
  
  }
  
  void display(){
  pushMatrix();
  scale(0.4,0.4);
  image(Wynonna,x,y);
  popMatrix();
  }
  
}

class Allison extends Clarke{
  Allison(int x_, int y_){
    super(x_,y_);
  
  }
  
  void display(){
    pushMatrix();
    scale(0.4,0.4);
  image(Allison,x,y);
  popMatrix();
  }
  
}
