class Line extends Radar
{
  float lineX1 = 0;
  float lineY1 = height-(width/5);

  Line()
  {
  }
  
  void drawLine()
  {
    strokeWeight(6);
    line( sqSize/2, height-r, lineX2, lineY2 );
    strokeWeight(1);
  }

}//end class