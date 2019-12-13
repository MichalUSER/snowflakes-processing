class FlakeGenerator {
  ArrayList<Flake> flakes = new ArrayList<Flake>();
  
  FlakeGenerator(int quantity) {
    generate(quantity);
  }
  
  void generate(int quantity) {
    for(int i = 0; i < quantity; i++) {
      Flake flake = new Flake(random(0, 900), random(-400, -150), random(5, 20), int(random(3, 7)));
      flakes.add(flake);
    }
  }
  
  void screenCollision(Flake flake) {
    if(flake.y > 500) {
      flake.x = random(0, 900);
      flake.y = random(-400, -150);
      flake.size = random(2, 20);
      flake.vel = int(random(3, 7));
    }
  }
  
  void showFlakes() {
    for(Flake flake : flakes) {
      screenCollision(flake);
      flake.show();
    }
  }
  
  void show() {
    showFlakes();
  }
}
