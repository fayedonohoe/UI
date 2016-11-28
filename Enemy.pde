class Enemy extends Radar
{
  int enemyX = sqSize/2;  //startX
  int enemyY = height;  //startY
  int enemySize = 10;


  Enemy() 
  {
  }
  
  void enemyApproaching()
 {
    fill(255, 0, 0);
    noStroke();

    ellipse( enemyX, enemyY, enemySize, enemySize);

    if (enemyY < height-r)
    {
      enemyY = height-r;
      enemyX = sqSize/2;
    }
    else if (frameCount % 315 == 0)
    {
        
        enemyY = enemyY - 10;
     
    }
    
    
 }
     
    
}//end class