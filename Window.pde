class Window
{
  
  PVector pos;
  PVector velocity;
  
  Window()
  {
    pos      =  new PVector(500,300); 
    velocity =  new PVector(random(-10,10),random(-10,10)); //randomises speed and direction of stars
  }
  
  void render()
  {
    fill(255);
    noStroke();
    ellipse(pos.x, pos.y, 2, 2); //creating a star
  }
  
  void update()
  {
    pos.add(velocity); //updating position of star
  }
  
}