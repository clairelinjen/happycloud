// Modified script by Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/KkyIDI6rQJI

class Drop {
  float x; // x postion of drop
  float y; // y position of drop
  float speed; // speed of te drop
  
  Drop() {
    x = random(width/3, 2*width/3);
    y = random(-500, -50);
    speed = random(1, 20);
  }

  void fall() {
    y = y + speed; 
    float grav = random(0.0, 0.2);
    speed = speed + grav;

    if (y > height) {
      y = random(-200, -100);
      speed = random(4, 10);
    }
  }

  void show() {
    noStroke();
    for (int i = 2; i < 5; i++ ) {
      ellipse(x,y + i*4,i*2,i*2);
    } 
  }
}
