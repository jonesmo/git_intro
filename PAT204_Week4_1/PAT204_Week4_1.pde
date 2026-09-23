// PAT 204: Creative Coding – Fall 2026
// Instructor: Molly Jones <jonesmo@umich.edu>

// Week 4 Day 1
// Object orientation continued

// Coding Task 4: myObject

/* Here we are calling on the class constructor to create
a new instance (i.e., object) from the Cursor class. Note
how this time we are passing parameters to the contructor
instead of just calling new Cursor(). This is because we
modified the implicit constructor of our class. More on
this in the class definition under the Cursor tab.*/
Cursor myCursor = new Cursor(50, 5);

// adding a new line to demonstrate changes in GitHub Desktop

void setup(){
  size(500, 500);
}

void draw(){
  
  // We don't want permanent trails, hence the background() call.
  background(255);
  
  /* This is where we call on the display() behavior of 
  our cursor object using the dot operator.*/
  myCursor.display();
}

/* We are using the mousePressed and mouseReleased listener 
functions to detect when the mouse has been, well... pressed
and released. We then use these to invoke the clickDown()
and clickUp behaviors of our mouse cursor.*/
void mousePressed(){
  myCursor.clickDown();
}

void mouseReleased(){
  myCursor.clickUp();
}
