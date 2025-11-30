Spaceship KCR;
Star [] Woodi;
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

}

void setup(){
  size(600,600);
  KCR = new Spaceship();
  Kenneth = new ArrayList <Asteroid>();
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
