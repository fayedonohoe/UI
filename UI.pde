
  
  int enemyX = sqSize/2;  //startX
  int enemyY = height;  //startY
  int enemySize = 15;


void setup()
{
  size( 1000, 600);
  //fullScreen();  // 768 x 1366
  
  radar = new Radar(); //initilias radar
  line = new Line(); //initilias line
}

Radar radar; //declares radar
Line line; //declares line

void draw()
{
  radar.drawRadar();

  /*
    
  int enemyX = sqSize/2;  //startX
  int enemyY = height;  //startY
  int enemySize = 15;
  

  
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