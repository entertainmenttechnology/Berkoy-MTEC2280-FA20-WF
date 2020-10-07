/*
Review demo looking at: 
  *animating via variables iterating through draw() loop
  *creating conditions for resetting variables
  *difference between keyPressed system variable and keyPressed() event function
  *creating a for loop
  *animating a for loop via variable iterating through draw() loop
*/

//global variables
float ellipseX= 0;
float ellipseWidth= 100;
float textX=0;
float move= 1;
float textMove = 2;
float rectX = 0;


void setup() {
  size(500, 500);
  textSize(22);
}


void draw() {
  background(0);
  
//ellipse moving from left to right and resetting in value
  //ellipse(x, y, width, height);
  ellipse (ellipseX, 250, ellipseWidth, 100);
  ellipseX+= move;  //ellipseX = ellipseX + move;
  if (ellipseX > width + 100) { //if ellipse moves off right of canvas
    ellipseX= -100;  // reset value to off left of canvas
  }

//text moving from left to right
  //text("text", x, y);
  text("hello", textX, 100);
  textX+= textMove;  //textX = textX + textMove;

//creating for loop to draw series of rectangles across the screen
  for (int i=25; i<width; i+=100) {
    //rect(x,y,width,height);
    rect(i + rectX, 350, 50, 50);  
  }
  rectX+=1; //it's this rectX value iterating that moves the rectangles
  
//uncomment to see keyPressed vs keyPressed()
  /*
       if (keyPressed){
   if (key== 'a' || key== 'A'){
   ellipseWidth = 200;
   }
   } else {
   ellipseWidth = 100;
   }
   */
}   


void keyPressed() {
  if (key == 'a' || key == 'A') {
    ellipseWidth= 200;
  }
} 
