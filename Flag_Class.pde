class flag
{
  //Creating the fields for the Flag Class
  
  //Flag Width+Height
  float fWidth;
  float fHeight;
  
  //Flag Num of Lines, Triangles, and Circle Diameter
  float numLines = 6;
  float numTri = 4;
  float circDiam;
  
  flag(float w, float h)
  {
    fWidth = w;
    fHeight = h;
    circDiam = fWidth/10;
  } 
  
  //Render and Update Methods
  void render()
  {
    //Sets the Origin to the center of the Screen
    translate(width/2, height/2);
    
    //Draw Flag Bars
    for(int i = 0; i < numLines; i++)
    { 
      noStroke();
      fill(255 - 255/numLines*i, 255, 255);
      rect(0, 0, fWidth, fHeight - fHeight/numLines *i);
    }
    
    //Draw Triangles and Circle in the middle
    for(int i = 0; i < numTri; i++)
    {
      //Define the Step for the change of size of the Triangles for both the Width and Height
      float triWStep = fWidth/20;
      float triHStep = fHeight/20;
      
      noStroke();
      fill(100 - 100/numTri*i, 255, 0 + 255/numTri*i*10);
      triangle(0, 0 + triHStep*i, 0, fHeight - triHStep*i, fWidth/2 - triWStep*i, fHeight/2);
      
      
      //Creating Circle in the Middle of the Center Triangle
      if(i == numTri-1)
      {
        pushMatrix();
        translate(0, 0 + triHStep*i);
        
        float centerTriW = (fWidth/2 - triWStep*i)/2 - circDiam/2;
        float centerTriH = (fHeight - triHStep*i)/2 - circDiam/2;
        
        noFill();
        stroke(170, 255, 255);
        strokeWeight(3);
        circle(centerTriW , centerTriH, circDiam);
        popMatrix();
      }
    }
    

  }
  
  void update()
  {
  }
}
