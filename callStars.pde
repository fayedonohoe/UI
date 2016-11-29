//function to call stars
void callStars()
{
  fill(random(50,255)); //randomizes colour of stars to make them flicker
  while (allStars.size()>500) { //stops arrayList from getting too big
    allStars.remove(0);
}
  stars = new Window(); //get a new star
  allStars.add(stars); //add stars to arrayList
  
  for(int i =0 ; i < allStars.size() ; i++){ //calling functions in class Stars
    allStars.get(i).update();
    allStars.get(i).render();
  }
}