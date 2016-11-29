float randomX = random(498);
float bugposX = randomX ;
float bugposY = 0;
float bugsize = 35;

float playerX = width/2;
float playerW = 50;
float playerH = 20;

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

if (bugposY > height-10)
{
  textSize(30);
  text("Alien has Escaped",460,300);
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
      
      fill(255);
      textSize(50);
      text("Alien has force field, lazers usless",500,300);
      text("You are Dooooomed",500,350);
    
    }
  }
}
}