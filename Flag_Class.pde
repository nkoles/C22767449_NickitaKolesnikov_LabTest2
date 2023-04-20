class flag
{
  //Creating the fields for the Flag Class
  
  //Flag Width+Height
  float fWidth;
  float fHeight;
  
  //Flag Num of Lines, Triangles, and Circle Diameter
  float numLines = 6;
  float numTri = 4;
  float circDiam = fWidth/10;
  
  flag(float w, float h)
  {
    fWidth = w;
    fHeight = h;
  } 
  
  //Render and Update Methods
  void render()
  {
    //Sets the Origin to the center of the Screen
    translate(width/2, height/2);
    
    //Draw Flag Bars
    for(int i = 0; i < numLines; i++)
    { 
      fill(255 - 255/numLines*i, 255, 255);
      rect(0, 0, fWidth, fHeight - fHeight/numLines *i);
    }
  }
  
  void update()
  {
  }
}
