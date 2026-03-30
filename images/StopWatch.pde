// Adeline Wright | March 25 | Timer
import processing.sound.*;
SoundFile alarm;
Button btnStart, btnStop, btnReset;
int totalTime, startTime, timeLeft;
boolean running;


void setup() {
  size(500, 500);
  alarm = new SoundFile(this, "Alarmsound.mp3");
  btnStart = new Button(100, 450, 100, 30, "Start");
  btnStop = new Button(250, 450, 100, 30, "Pause");
  btnReset = new Button(400, 450, 100, 30, "Reset");
  totalTime=10;
  startTime= 0;
  running = false;
}
void draw() {
  background(#01153E);

  if (running == true) {
    int elapsed = (millis()-startTime)/1000;
    timeLeft = totalTime - elapsed;

    if (timeLeft <= 0) {
      timeLeft = 0;
      running = false;
      alarm.play();
    }
  }
  btnStart.display();
  btnStop.display();
  btnReset.display();
  textSize(80);
  text(timeLeft,width/2,height/2);
}

void mousePressed() {
  if (btnStart.isMouseOver() == true) {
    running = true;
    startTime = millis();
  }
  
  if (btnStop.isMouseOver() == true) {
    running = false;
  }
  
  if (btnReset.isMouseOver() == true) {
    running = true;
    startTime = millis();
  }
}
