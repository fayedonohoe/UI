class Window
{
  
  PVector pos;
  PVector velocity;
  
  Window()
  {
    
    pos      =  new PVector(0,0); //(0, 0) is at the centre of the screen due to translate()
    velocity =  new PVector(random(-10,10),random(-10,10)); //randomises speed and direction of stars
  }
  
  void drawWindow()
  {
    fill(0);
    rect(width/5, 10, 775,325); //outer frame
    ellipse(pos.x, pos.y, random(1,2), random(1,2)); //creating a star
  }
  
  void update()
  {
    pos.add(velocity); //updating position of star
  }
  
}