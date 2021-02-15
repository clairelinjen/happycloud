// Modified script by Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for: https://youtu.be/KkyIDI6rQJI

// Includes function for drawing teardrop
// from https://gist.github.com/clavis-magna/42fe43e5f7ef0291596b
// (based on tutorial from learningprocessing.com


Drop[] drops = new Drop[90]; // array of drop objects

void setup() {
  fullScreen(); // size of the window
  for (int i = 0; i < drops.length; i++) { // we create the drops 
    drops[i] = new Drop();
  }
}

void draw() {
  background(0, 0, 0); // background color in RGB color cordinates
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall(); // sets the shape and speed of drop
    drops[i].show(); // render drop
  }
}
