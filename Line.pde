class Line extends Radar
{
  float lineX1 = width-sqSize/2;
  float lineY1 = height-r;

  Line()
  {
  }
  
  void drawLine()
  {
    strokeWeight(6);
    line( lineX1, lineY1, lineX2, lineY2 );
    strokeWeight(1);
  }

}//end class