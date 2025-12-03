Spaceship KCR;
Star [] Woodi;
ArrayList <Bullet> Jason;
ArrayList <Asteroid> Kenneth;
void keyPressed(){
  if(keyCode == UP){
    KCR.accelerate(0.5);
  }
  if(keyCode == DOWN){
    KCR.accelerate(-0.5);
  }
  if(keyCode == LEFT){
    KCR.turn(-5);
  }
  if(keyCode == RIGHT){
    KCR.turn(5);
  }
  if(keyCode == SHIFT){
    KCR.hyperspace();
  }
  if(keyCode == 32){
    Jason.add(new Bullet());
  }
}

void setup(){
  size(600,600);
  KCR = new Spaceship();
  Kenneth = new ArrayList <Asteroid>();
  Jason = new ArrayList <Bullet>();
  for(int i = 0; i<= 25; i++){    
    Kenneth.add(new Asteroid());
  }
  Woodi = new Star[200];
  for(int i = 0; i<Woodi.length; i++){
    Woodi[i] = new Star();
  }
}
void draw(){
  background(0);
  for(int i = Jason.size()-1; i>=0; i--){
    Jason.get(i).move();
    Jason.get(i).show();
    for(int a = Kenneth.size()-1; a>=0; a--){
      float d = dist((float)Jason.get(i).getX(), (float)Jason.get(i).getY(), (float)Kenneth.get(a).getX(), (float)Kenneth.get(a).getY());
      if(d<=10){
        Kenneth.remove(a);
        Jason.remove(i);
        i=-1;
        a=-1;
      }
    }
  }
  for(int i = 0; i<Kenneth.size(); i++){
    Kenneth.get(i).move();
    if(Kenneth.get(i).NearShip() == true){
      Kenneth.remove(i);
    }
  }
  for(int i = 0; i<Woodi.length; i++){
    Woodi[i].show();
  }
  KCR.show();
  KCR.move();

}
