class Line extends Radar
{
  float lineX1;
  float lineY1;
  float line2X;
  float line2Y;
  int sqSize = height / 2;
  int r = 145;
  float time = millis() / 800.0f;

  Line()
  {
    this.lineX1 = lineX1;
    this.lineY1 = lineY1;
    line2X = (sqSize/2 + r*cos(time));
    line2Y = (height-r + r*sin(time));
  }

}//end class