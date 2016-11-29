int currentScreen;

Window stars;
 
ArrayList<Window> allStars = new ArrayList<Window>(); //array list to store star objects

void setup()
{
  size( 1000, 600);
  //fullScreen();  // 768 x 1366
  
  radar = new Radar(); //initialises radar
  line = new Line(); //initialises line
  enemy = new Enemy();//initialises enemy
  graph = new Graph();

  stars = new Window();
}
  
  Radar radar; //declares radar
  Line line; //declares line
  Enemy enemy; //declares enemy
  Graph graph; 
  
  
   
  
  /*check X and Y position
  void mouseClicked(){println(mouseX, mouseY);}
  */
  
  void draw()
  {
    background(0);
    radar.drawRadar();
    line.drawLine();
    enemy.enemyApproaching();
    graph.drawGraph();
    
    fill(0);
    //rect((width/5)+10, 10, 775,325); //outer frame
    callStars();
  }



/*
to make orbity bits use  kinda but have the 7s dif nums
float lineX2 = (sqSize/2 + (r-7)*cos(time));
float lineY2 = (height-r + (r-7)*sin(time));
*/