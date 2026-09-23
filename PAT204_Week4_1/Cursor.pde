// Cursor class definition
class Cursor{
  
  /* Here we are overriding the implicit constructor of our
  class so that we can use it to set certain attributes of our
  cursor at the time we call the class constructor. We made 
  it so that the constructor will expect diameter and weight
  values to be passed to it so that it can set the corresponding
  attributes of the cursor object it creates.*/
  Cursor(int diameter, int weight){
    cursorDiameter = diameter;
    cursorWeight = weight;
  }
  
  /* We talked about the number of ways in which an object 
  can be set up. Whereas the diamater and weight functions
  are being set by the constructor, we are "hardcoding" the
  color here. This is useful for when all instances of an 
  object needs to share a certain attribute by default.*/
  int cursorDiameter;
  int cursorWeight;
  color cursorColor = color(10, 200, 200, 100);
  
  // This is the drawing behavior for our cursor.
  void display(){
    noFill();
    strokeWeight(cursorWeight);
    stroke(cursorColor);
    ellipse(mouseX, mouseY, cursorDiameter, cursorDiameter);
  }
  
  // This behavior reduces the cursor diameter to half its
  // size, doubles its stroke weight, and makes it a more 
  // opaque color to indicate mouse clicks.
  void clickDown(){
    cursorDiameter = cursorDiameter/2;
    cursorWeight = cursorWeight*2;
    cursorColor = color(10, 200, 200, 200);
  }
  
  // This behavior undoes all those changes when the mouse is 
  //released.
  void clickUp(){
    cursorDiameter = cursorDiameter*2;
    cursorWeight = cursorWeight/2;
    cursorColor = color(10, 200, 150, 100);
  }
}
