// Adeline Wright | March |
float posX, posY;
color creatureColor = color(0, 200, 255); // Starting color (Blue)

void setup() {
  size(600, 600);
  posX = width / 2;
  posY = height / 2;
  noStroke();
}

void draw() {
  background(30);

  // Simple motion: 5% movement toward the mouse per frame
  posX = lerp(posX, mouseX, 0.05);
  posY = lerp(posY, mouseY, 0.05);

  // Draw the creature
  fill(creatureColor);
  ellipse(posX, posY, 60, 60);
}

// Change color when mouse is clicked
void mousePressed() {
  changeColor();
}

// Change color when any key is pressed
void keyPressed() {
  changeColor();
}

// Function to pick a new random color
void changeColor() {
  creatureColor = color(random(255), random(255), random(255));
}
