class Enemy extends Radar
{
  int enemyX = width-(sqSize/2);  //startX
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
      
      enemyX = width-sqSize/2;
      enemyY = height-r;
      
      if (enemyX == width - sqSize/2)
      {
        currentScreen = 2;
      }
    }
    else if (frameCount % 60 == 0)
    { 
        enemyY = enemyY - 30;
    }

 } 
    
}//end class