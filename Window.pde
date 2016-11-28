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
    rect(width/5, 10, 700,250); //outer frame
    ellipse(pos.x, pos.y, random(1,2), random(1,2)); //creating a star
  }
  
  void update()
  {
    pos.add(velocity); //updating position of star
  }
  
}


/*


//function to call stars
void callstars(){
  fill(random(50,255)); //randomizes colour of stars to make them flicker
  while (starList.size()>500) { //stops arrayList from getting too big
    starList.remove(0);
  }
  stars = new Stars(); //get a new star
  starList.add(stars); //add stars to arrayList
  
  for(int i =0 ; i < starList.size() ; i++){ //calling functions in class Stars
    starList.get(i).update();
    starList.get(i).render();
  }
}

*/