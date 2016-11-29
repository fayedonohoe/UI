float randomX = random(498);
//float randomMove = random(-30);
float bugposX = randomX ;
float bugposY = 0;
float bugsize = 35;

float playerX = width/2;
float playerW = 50;
float playerH = 20;
//float cannon = (playerX + (playerW/2) );

float distance;


void alienZap()
{
  
  //bug
  fill(160, 190, 20);
  ellipse( randomX, bugposY, bugsize, bugsize);
  
  //player
  fill(10, 200, 250);
  rect(playerX, height-40, playerW, playerH);
  
  
  
  if (frameCount % 30 == 0)
{
  // Code in here will happen once per second
  bugposX += random(50);
  
  bugposY += 10;
}  
  
  if (keyPressed)
{
  if (keyCode == LEFT)
  {
    // This will happen if the left key is pressed
    playerX -= 5;
  }
  else if (keyCode == RIGHT)
  {
    playerX += 5;
  }
  if(keyPressed)
  {
    if (keyCode == UP)
    {
      stroke(0, 255, 255);
      line ( (playerX+25), height-40, (playerX+25), 0 );
      
      //distance = dist(
    
    }
  }
}
}