class Radar
{
  int sqX = 0;
  int sqY = height-(width/4);
  int sqSize = width / 3;
  int circleSize = 240;
  int r = 125; 
  
  float time = millis() / 800.0f;
  float lineX2 = (sqSize/2 + (r-7)*cos(time));
  float lineY2 = (height-r + (r-7)*sin(time));
  
  Radar()
  {
  }
  
  void drawRadar()
  {
    stroke(0,255,0);
    fill(0);
    rect(sqX, sqY , sqSize, sqSize);
    
    strokeWeight(2);
    ellipse( sqSize/2, height-r, circleSize, circleSize); 
    ellipse( sqSize/2, height-r, circleSize/1.5, circleSize/1.5); 
    ellipse( sqSize/2, height-r, circleSize/3, circleSize/3); 
    ellipse( sqSize/2, height-r, circleSize/8, circleSize/8); 
   
  
    //Radar Line
    strokeWeight(6);
    line = new Line();
    //line( sqSize/2, height-r, lineX2, lineY2 );
    strokeWeight(1);
  }  
}