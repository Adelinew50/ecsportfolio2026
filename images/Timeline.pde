//Adeline Wright | Feb, 25, 26| Timeline
void setup() {
  size(950,400);
}
void draw() {
  background(255,182,193);
  drawRef();
  histEvent(65,200, "May 11,1894",true, " She was born on 11 May, 1894 in Allegheny, Pennsylvania.");
  histEvent(170,300, "1908",false, "Her family moved to Santa Barbara, California in 1908.");
  histEvent(263,200, "1916",true, " In 1916–1923 she trains and performs at the Denishawn School of Dancing.");
  histEvent(900,200, " 1976",true, "She was then awarded the Presidential Medal of Freedom from President Gerald Ford.");
  histEvent(865,300, " 1970",false, "Martha Graham preforms her last dance at the age 75. ");
  histEvent(365,300, "  1926",false, "She founds the Martha Graham Dance Company and holds her first concert in New York City.");
  histEvent(425,200, "  1930",true, "Graham choreographs and performs Lamentation, a very successful  modern dance.");
  histEvent(515,300, "  1938",false, " In 1938, she becomes the first dancer to preform at the White House. ");
 
}
void drawRef() {
  textAlign(CENTER);
  textSize(35);
  fill(231,84,128);
  text("Martha Graham: Timeline",width/2,70);
  textSize(20);
  text("by Adeline Wright",width/2,90);
  strokeWeight(4);
  line(50,250,900,250);
  text("1894",50,275);
  text("1976",900,275);
  strokeWeight(2);
  line(50,245,50,255);
  line(158.3,245,158.3,255);//1908
  line(900,245,900,255);
  line(250,245,250,255);
  line(350,245,350,255);
  line(500,245,500,255);
 // line(600,245,600,255);
  line(410,245,410,255);
  line(850,245,850,255);
}

void histEvent(int x, int y, String title, boolean top, String detail) {
  if(top == true) {
  line(x,y,x-15,y+50);
  } else {
  line(x,y,x-15,y-50);
  } 
  rectMode(CENTER);
  strokeWeight(1.5);
  fill(231,84,128);
  rect(x,y,100,30,10);
  fill(#ffffff);
  text(title, x,y+5);
  if(mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
    text(detail, width/2, 350);
  }
}



//Life Of Martha Graham

//Born on 11 May, 1894 in Allegheny, Pennsylvania
//1916–1923 she trains and performs at the Denishawn School of Dancing 
//1926 she founds the Martha Graham Dance Company and holds her first concert in New York City.
//1930 she choreographs and performs Lamentation, a very successful  modern dance.
//1938 she preforms at the White House and was the first dancer to do that
//1970 Dances her last performance at 75 
// 1976 She was then awarded the Presidential Medal of Freedom from President Gerald Ford
//1908: Family moved to Santa Barbara, California.
