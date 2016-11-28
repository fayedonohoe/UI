void setup()
{
  fullScreen();  // 768 x 1366
}



void draw()
{

  stroke(0,255,0);
  int sqX = 0;
  int sqY = height-(width/5);
  int sqSize = height / 2;
  int circleSize = 270;
  
  int r = 145;
  float time = millis() / 800.0f;
  //float line2X = (sqSize/2 + r*cos(time));
  //float line2Y = (height-r + r*sin(time));
  
  int enemyX = sqSize/2;  //startX
  int enemyY = height;  //startY
  int enemySize = 15;
 
  
  fill(0);
  rect(sqX, sqY , sqSize, sqSize);
  //centre = 190,634
  ellipse( sqSize/2, height-r, circleSize, circleSize); 
  ellipse( sqSize/2, height-r, circleSize/1.5, circleSize/1.5); 
  ellipse( sqSize/2, height-r, circleSize/3, circleSize/3); 
  ellipse( sqSize/2, height-r, circleSize/8, circleSize/8); 
  
  //Radar Line
  strokeWeight(6);
  Line Line = new Line( sqSize/2, height-r);
  //line( sqSize/2, height-r, line2X, line2Y );
  strokeWeight(1);
  
  //enemy approaching
  fill(255, 0, 0);
  noStroke();
  
  while ( (dist (line2X,line2Y , sqSize/2,height-15) <= 10 ) && (enemyY != height-r) )
  {
    ellipse( enemyX, enemyY, enemySize, enemySize); 
    enemyY -= 10;
  }
  
  
  /*
                  //ellipse( 250, 700, 15, 15);
  if dist( (line2X,line2Y , enemyX,enemyY) <= 
    ellipse( enemyX, enemyY, enemySize, enemySize);  
    enemyX
 */
  
  
}