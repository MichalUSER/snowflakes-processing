class Flake {
  float x;
  float y;
  float size;
  int vel;
  
  Flake(float xNew, float yNew, float sizeNew, int velNew) {
    x = xNew;
    y = yNew;
    size = sizeNew;
    vel = velNew;
  }
  
  void fall() {
    y += vel;
  }
  
  void show() {
    fall();
    fill(248);
    circle(x, y, size);
  }
}
