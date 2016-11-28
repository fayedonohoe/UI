int currentScreen = 1;
  


void setup()
{
  size( 1000, 600);
  //fullScreen();  // 768 x 1366
  
  radar = new Radar(); //initialises radar
  line = new Line(); //initialises line
  enemy = new Enemy();//initialises enemy
  
}
 
 switch(currentScreen)
 {
   //main screen
   case 1:
     Radar radar; //declares radar
    Line line; //declares line
    Enemy enemy; //declares enemy
    
    /*check X and Y position
    void mouseClicked(){println(mouseX, mouseY);}
    */
    
    void draw()
    {
      radar.drawRadar();
      line.drawLine();
      enemy.enemyApproaching();
    }
    break;
   
 }//end switch
    
    
    



/*
to make orbity bits use  kinda but have the 7s dif nums
float lineX2 = (sqSize/2 + (r-7)*cos(time));
float lineY2 = (height-r + (r-7)*sin(time));
*/