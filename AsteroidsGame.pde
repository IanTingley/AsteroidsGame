Spaceship KCR;

void keyPressed(){
  if(keyCode == UP){
    KCR.accelerate(5);
  }
  if(keyCode == LEFT){
    KCR.turn(5);
  }
  if(keyCode == RIGHT){
    KCR.turn(-5);
  }

}

void setup(){
  size(600,600);
  KCR = new Spaceship();
  Star [] Woodi = new Star[50];
  for(int i = 0; i<Woodi.length; i++){
    Woodi[i] = new Star();
    Woodi[i].show();
  }
}
void draw(){
  background(0);
  KCR.show();
  KCR.move();
}
