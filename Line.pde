class Line extends Radar
{
  float lineX1 = 0;
  float lineY1 = height-(width/5);
  float lineX2;
  float lineY2;
  int sqSize = height / 2;
  int r = 145;
  float time = millis() / 800.0f;

// make a default constructor to pass back into radar class


  Line()
  {
    

  }

//end class

  //Radar Line
  /*strokeWeight(6);
  Line Line = new Line( sqSize/2, height-r);1
  line( sqSize/2, height-r, line2X, line2Y );
  strokeWeight(1);*/
}