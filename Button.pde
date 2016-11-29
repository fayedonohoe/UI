class Button
{
  float bX = 250;
  float bY = 200;
  float bSize = 400;
  boolean bOver = false;
  color Highlight = color(200);
  color Color = color(200);
  
  
  void render()
  {
      fill(0,0,255);
      rect( bX, bY, bSize, 150);
      //text
      update();
      
      if (bOver) {
      fill(Highlight);
    } else {
      fill(Color);
    }
    rect(bX,bY,bSize,50,40);
    
    fill(0);
    textSize(20);
    text("An Alien has Approched",bX+200,bY+30);
    textSize(40);
    text("Fight?",bX+200,bY+100);
  }

void update() 
{
    if ( overB(bX + width / 2, bY + height /2 , bSize, bSize/3) ) {
      bOver = true;
    } else {
      bOver = false;
    }
 }
  
  boolean overB(float x, float y, float w, float h)  {
    if (mouseX >= x && mouseX <= x+w && 
        mouseY >= y && mouseY <= y+h) {
      return true;
    } else {
      return false;
    }
  }//end of overBack()
  
  
}