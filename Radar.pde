class Radar
{
  int sqX = 0;
  int sqY = height-(width/5);
  int sqSize = height / 2;
  int circleSize = 270;
  int r = 145; 
  
  float time = millis() / 800.0f;
  float lineX2 = (sqSize/2 + r*cos(time));
  float lineyY2 = (height-r + r*sin(time));
  
  /*
  float sqX;
  float sqY;
 
  */
  
  void drawRadar()
  {
    stroke(0,255,0);
    fill(0);
    rect(sqX, sqY , sqSize, sqSize);
    //centre = 190,634
    ellipse( sqSize/2, height-r, circleSize, circleSize); 
    ellipse( sqSize/2, height-r, circleSize/1.5, circleSize/1.5); 
    ellipse( sqSize/2, height-r, circleSize/3, circleSize/3); 
    ellipse( sqSize/2, height-r, circleSize/8, circleSize/8); 
   
  
    //Radar Line
    strokeWeight(6);
    line = new Line();
    //line( sqSize/2, height-r, line2X, line2Y );
    strokeWeight(1);
  }  
}
  
  
  