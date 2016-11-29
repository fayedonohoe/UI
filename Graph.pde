

class Graph
{  
  float[] point = {45, 27, 55, 81, 38, 66, 11};
  String[] labels = {"Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"};   
  float border = 90; //the height of the border of the graph
  float distance = 5; //lines spaced on Y axis
      
  Graph()
  {
  }
  
  void drawGraph()
  {
   float startX = 30; //starting x positon of the graph
   float startY = height-startX; //starting y position of the graph
   float Endx = width/5; //end x position of the graph ~~startX+(startY-startX);
   float Endy = startY-(startY-startX); //end y position of the graph
   
   stroke(255);
   line (startX, startY, startX, Endy); //draw Y axis
   line (startX, startY, Endx, startY); //draw X axis
   
   int i = 0;
     
   float gLength = Endx-startX; //length of the graph
   float gHeight = startY-startX; //height of the graph
     
   float spaceX = gLength / (labels.length-1); //space factor between x axis
   float spaceY = gHeight / (border/distance); //space factir between y axis
     
     //x and y will start at the 0,0 of the graph and will increase by distance every iteration
   float x = startX; 
   float y = startY; 
   
   int j = i; //j will start at 0 and will increase by distance every iteration
  
   //draw the lines on the y axis
   for (i=0; i <= border/distance; i++)
   {
      line(x, y, x-5, y);
      textAlign(RIGHT);
      text(j, x-10, y);
        
      y -= spaceY; //move to the next space
      
      j+=distance;
   }
   
   //reset x and y at 0,0 of the graph
   x = startX;
   y = startY;
     
   //draw the lines on the x axis
   for (i=0; i < labels.length; i++)
   {
      line(x, y, x, y+5);
      textAlign(CENTER);
      text(labels[i], x, y+25);
        
      x += spaceX; //move to the next space
       
   }
     
   //change will be the x position of the graph and will move to each element in the horizLabels array  
   float change = startX;
   float nextY; //will store the next y position of the point to be plotted so the previous point can connect to it creating the line 
     
   stroke(0,255,255);

 //draw data
 for (i=0; i < point.length-1; i++)
 {
     y = map (-point[i], -border, 0, startX, gHeight+startX);
     nextY = map (-point[i+1], -border, 0, startX, gHeight+startX);
   
     //draw lines and dots where the data is plotted
     ellipse(change, y, 5, 5);
     line(change, y, change+spaceX, nextY); 
     change += spaceX;
 }
     //draw last dot
     nextY = map (-point[i], -border, 0, startX, gHeight+startX);
     ellipse(change, nextY, 5, 5);
}//end drawGraph
  
}//end class