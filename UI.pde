
  
  int enemyX = 250;  //startX
  int enemyY = height;  //startY
  int enemySize = 15;


void setup()
{
  size( 1000, 600);
  //fullScreen();  // 768 x 1366
  
  radar = new Radar(); //initialises radar
  line = new Line(); //initialises line
  enemy = new Enemy();//initialises enemy
  
}

Radar radar; //declares radar
Line line; //declares line
Enemy enemy; //declares enemy

/*check X and Y position
void mouseClicked()
  {
      println(mouseX, mouseY);
      243, 564
      227, 551
      221, 542
      211, 528
      202, 518
      195, 508
      187, 501
      181, 493
      172, 484
      167, 476
  }
*/

void draw()
{
  radar.drawRadar();
  line.drawLine();
  enemy.enemyApproaching();
  
  
}

/*
to make orbity bits use  kinda but have the 7s dif nums
float lineX2 = (sqSize/2 + (r-7)*cos(time));
float lineY2 = (height-r + (r-7)*sin(time));
*/