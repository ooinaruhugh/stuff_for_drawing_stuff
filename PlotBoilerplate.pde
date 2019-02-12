// Runtime variables
float t = 0;
float x;
float y;

// Parameters that are to be set during runtime
// Bounding rectangle where we actually draw
float x_max;
float y_max;

// Formulas that calculate our coordinates to be drawn
float x_value(float t) {
  return 0*t;
}

float y_value(float t) {
  return 0*t;
}


// Calculate the angle of a vector in the 2d plane
// Quite useful for HSB stuff
float angle(float x, float y) {
  float result = (float)atan(y / x);
  if (result < 0) result += 2 * Math.PI;
  return result;
}

void setup() {
  size(900, 900);
  colorMode(HSB, 2, 2, 2);

  // Setting up our parameters (for scaling etc.)
  x_max = width * 0.45;
  y_max = height * 0.45;
  
  // Intitializing our drawing position
  x = x_value(t);
  y = y_value(t);

  background(0);

  stroke(255);
  strokeWeight(2);

  frameRate(1200);
}

boolean take_snapshot = false;
//boolean dot_plot = false;

void draw() {
  // Setting our coordinate origin to the center of our canvas
  translate(width/2, width/2);

  // This sets the color for whatever we want to draw.
  stroke(2, 2, 2);

  // Here we draw whatever we want to draw
  continuous_plot();
  //dot_plot(); // This makes for a funnier animation, but one should increase frameRate. Otherwise, it's quite slow.


  if (take_snapshot) {
    saveFrame("output/pic_######.png"); 
    take_snapshot = false;
  }
}

void keyPressed() {
  if (key == 'c' || key == 'C') {
    take_snapshot = true;
  }
}
