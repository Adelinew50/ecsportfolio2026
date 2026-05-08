//Adeline Wright | 20 Feb 2026 | Creature Assignment
 PImage barn;
void setup() {
  size(1000,1000);
  barn=loadImage("barn1.png");
  
}

void draw() {
  background(2);
  image (barn,0,0) ;
  drawCreature(mouseX,mouseY);
  
}

void drawCreature(int x, int y) {
  fill(255,255,255);
    ellipse(x+130,y+160,40,40);//leg
    ellipse(x+35,y+160,40,40);//leg
    ellipse(x+80,y+90,180,150);//body
    ellipse(x+20,y+15,100,100);//head
    ellipse(x,y-5,10,10);//eye
    ellipse(x+38,y-5,10,10);//eye
    ellipse(x-5,y-58,25,70); //ears
    ellipse(x+40,y-58,25,70);//ears
    ellipse(x+180,y+100,40,40);//tail
   fill(255,182,193);
    ellipse(x-5,y-45,10,40); //ears
    ellipse(x+40,y-45,10,40);//ears
    ellipse(x+20,y+20,10,10);//nose
    
    
}
