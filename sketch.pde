FlakeGenerator flakeGenerator;
void setup() {
  flakeGenerator = new FlakeGenerator(100);
  size(900, 500);
}

void draw() {
  background(20);
  flakeGenerator.show();
}
