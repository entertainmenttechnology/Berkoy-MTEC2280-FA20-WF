/*
EXAMPLE 10-6 Object-oriented timer

Adapted from Learning Processing by Dan Shiffman

 */

Timer timer;
Timer timer2;

void setup() {
  size(200, 200);
  background(0);
  timer = new Timer(5000); //pass into constructor
  timer2= new Timer(10000);
  timer.start();
  timer2.start();
}


void draw() {
  if (timer.isFinished()) {
    background(random(255));
    timer.start();
  }
  if (timer2.isFinished()){
    ellipse (width/2, height/2, 50, 50);
  }
}



class Timer {
  int savedTime;  // When Timer started
  int totalTime;  // How long Timer should last
  
  //constructor
  Timer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }
  
  //methods
  void start() {
    savedTime = millis();
  }
  boolean isFinished() {
    // Check how much time has passed
    int passedTime = millis() - savedTime;
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
}
