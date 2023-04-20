void setup()
{
  size(800, 800);
  colorMode(HSB);
  noStroke();
  
  initFlagArray();
}

//Create Flag Array
ArrayList<flag> flags = new ArrayList<flag>();

//Flag Array Variables
int numFlags = 10;

//Populate Flag Array
void initFlagArray()
{
  for(int i = 0; i < numFlags ; i++)
  {  
    flags.add(new flag(random(200, 500), random(100, 250), random(0, 200), random(0, 200) ));
  }
}

flag test = new flag(200, 100, 0, 0);


//Render Flag Array
void renderFlag()
{
  for(int i = 0; i < flags.size(); i++)
  {
    flags.get(i).render();
  }
}

//Update Flag Array
void updateFlag()
{
  for(int i = 0; i < flags.size(); i++)
  {
    flags.get(i).update();
  }
}

void draw()
{
  background(255);
  
  renderFlag();
  updateFlag();
}
