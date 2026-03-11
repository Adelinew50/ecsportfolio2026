//Adeline Wright | 4 March 2026| ShapeGame
int x, y, tx, ty, score;
float tw;
PImage player, target, shop, closed;


void setup() {
  size (800, 800);
  x = width/2;
  y = height/2;
  tx = int(random(20, width-20));
  ty = int(random(20, height-20));
  tw= 200.0;
  score = 0;
  player = loadImage("player.png");
  target = loadImage("target.png");
  shop= loadImage("shop.png");
  closed= loadImage("closed.png");
}

void draw() {
  imageMode(CENTER);
  background(2);
  image (shop,width/2,height/2,650,650) ;
  
  scorePanel();
  target();
  imageMode(CENTER);
  image(player, x, y);
}


void target() {
  float d=dist(x, y, tx, ty);
  println (d);
  if (d<50) {
    score = score + int(tw*20);
    tx=int(random(20, width-20));
    ty=int(random(20, height-20));
  }
  rectMode(CENTER);
  if(tw<10) {
  gameOver();
  }
  image(target, tx, ty);
  tw =  tw-0.1;
  target.resize(int(tw), int(tw));
}
void gameOver() {
 background(0);
   image (closed,width/2,height/2,800,800) ;
  fill(255,0,0);
  textSize(100);
  text("Over",width/2,height/2);
   text("Game",width/2,height/2-70);
  noLoop();
  
}

void scorePanel() {
  rectMode(CENTER);
  fill(127, 127);
  rect(width/2, 15, width, 30);
  fill(0);
  textSize(30);
  text("Score:"+score, 20, 25);
}

void keyPressed() {
  //looping
  if (x> width) {
    x = 0;
  }
  if (x < 0) {
    x = width;
  }
  if (y> height) {
    y = 0;
  }
  if (y < 0) {
    y = height;
  }


  //WASD
  if (key == 'w' || key == 'W' || keyCode == UP) {
    y = y -10;
  } else if ( key == 's' || key == 'S'|| keyCode == DOWN ) {
    y = y +10;
  } else if ( key == 'd' || key == 'D'|| keyCode == RIGHT ) {
    x = x +10;
  } else if ( key == 'a' || key == 'A' || keyCode == LEFT ) {
    x = x -10;
  }
}
