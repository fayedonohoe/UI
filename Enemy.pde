class Enemy extends Radar
{
  int enemyX = sqSize/2;  //startX
  int enemyY = height;  //startY
  int enemySize = 15;
  //PVector d0, d1, d2, d3, d4, d5, d6, d7, d8, d9;
  PVector[] points = new PVector[10]; 

  Enemy() 
  {
  }
  
  void enemyApproaching()
  {
    points[0] = new PVector(243,564); 
    points[1] = new PVector(227,551);
    points[2] = new PVector(221,542); 
    points[3] = new PVector(211,528); 
    points[4] = new PVector(202,518); 
    points[5] = new PVector(195,508); 
    points[6] = new PVector(187,501);
    points[7] = new PVector(181,493); 
    points[8] = new PVector(172,484); 
    points[9] = new PVector(167,476); 
 

    fill(255, 0, 0);
    noStroke();
    
    for( int i = 0; i < points.length; i--)
    {
      
    }
    
    /*
    do
    {
      ellipse( enemyX, enemyY, enemySize, enemySize); 
      enemyY -= 10;
      enemyX -= 10;
    }
    while ( (dist (lineX2,lineY2 , sqSize/2,height-15) <= 10 ) && (enemyY != height-r) );
  }
  */
  
}  
}//end class