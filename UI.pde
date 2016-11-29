/*
OOP Assignment 1 - Create a sci-fi inspired User Interface
Compete with loops, controls, array lists, inheritence

*/

int currentScreen = 1;

Window stars;
Button button;
 
ArrayList<Window> allStars = new ArrayList<Window>(); //array list to store star objects

void setup()
{
  size( 1000, 600);
  //fullScreen();  // 768 x 1366
  
  radar = new Radar(); //initialises radar
  line = new Line(); //initialises line
  enemy = new Enemy();//initialises enemy
  graph = new Graph();// initialising

  stars = new Window();// initialising
  button = new Button();// initialising
}
  
  Radar radar; //declares radar
  Line line; //declares line
  Enemy enemy; //declares enemy
  Graph graph; //declaring
  
  /*check X and Y position
  void mouseClicked(){println(mouseX, mouseY);}
  */
  
  void draw()
  {
    background(0);
    
    if (currentScreen == 1) 
    {
      radar.drawRadar();
      line.drawLine();
      enemy.enemyApproaching();
      graph.drawGraph();
      
      fill(0);
      //rect((width/5)+10, 10, 775,325); //outer frame
      callStars();
    }
    
    else if (currentScreen == 2)
    {
      
      radar.drawRadar();
      line.drawLine();
      enemy.enemyApproaching();
      graph.drawGraph();
      
      fill(0);
      //rect((width/5)+10, 10, 775,325); //outer frame
      callStars();
      
      button.render();
      
      
    }
    else if (currentScreen == 3)
    {
      alienZap();
    }  
    
  }
  
  void mousePressed() {
    if (currentScreen == 2)
    {
      //call alienzap
      currentScreen = 3;
    }
  }