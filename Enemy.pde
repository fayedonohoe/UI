class Enemy extends Radar
{
  int enemyX = sqSize/2;  //startX
  int enemyY = height;  //startY
  int enemySize = 5;


  Enemy() 
  {
  }
  
  void enemyApproaching()
 {
    fill(255, 0, 0);
    noStroke();

    for (enemyY = height; enemyY > 475; enemyY--)
    {
      ellipse( enemyX, enemyY, enemySize, enemySize);     
    }
    
     
  }  
}//end class