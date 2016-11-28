/*
    
  
   
  //enemy approaching
  
  
  
  /*
                  //ellipse( 250, 700, 15, 15);
  if dist( (line2X,line2Y , enemyX,enemyY) <= 
    ellipse( enemyX, enemyY, enemySize, enemySize);  
    enemyX
 */
  
class Enemy extends Radar
{
  int enemyX = sqSize/2;  //startX
  int enemyY = height;  //startY
  int enemySize = 15;
  
  Enemy() 
  {
  }
  
  void enemyApproaching()
  {
    fill(255, 0, 0);
    noStroke();
    
    while ( (dist (lineX2,lineY2 , sqSize/2,height-15) <= 10 ) && (enemyY != height-r) )
    {
      ellipse( enemyX, enemyY, enemySize, enemySize); 
      enemyY -= 10;
    }
  }
  
  
}//end class