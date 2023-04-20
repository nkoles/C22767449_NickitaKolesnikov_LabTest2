//Declare flags
flag f1 = new flag(200, 100);

void setup()
{
  size(800, 800);
  colorMode(HSB);
  noStroke();
}

void draw()
{
  background(255);
  f1.render();
}
