float pi = (float)Math.PI;
int screenW = 600;
int screenH = 600;

Fists fists = new Fists();
AutoGun autoGun = new AutoGun();
Player player = new Player();

void setup() {
  size(600, 600);
  
} 

void draw() {
  background(255);
  player.update();
  player.playerUpdate();
  translate(-player.mov.x, -player.mov.y);
  fill(255, 0, 0);
  ellipse(200, 200, 50, 50);
  
}

void mousePressed() {
  switch (mouseButton) {
    case LEFT: player.weapon.leftPress(); player.weapon.leftDown = true; break;
    case RIGHT: player.weapon.rightPress(); player.weapon.rightDown = true; break;
  }
}

void mouseReleased() {
  switch (mouseButton) {
    case LEFT: player.weapon.leftRelease(); player.weapon.leftDown = false; break;
    case RIGHT: player.weapon.rightRelease(); player.weapon.rightDown = false; break;
  }
}

void keyPressed() {
  switch (key) {
    case ' ': player.weapon.spaceMeta = true; break;
    case 'w': player.moveF = true; break;
    case 's': player.moveB = true; break;
    case 'a': player.moveR = true; break;
    case 'd': player.moveL = true; break;
  }
}

void keyReleased() {
   switch(key) {
     case ' ': player.weapon.spaceMeta = false; break;
     case 'w': player.moveF = false; break;
     case 's': player.moveB = false; break;
     case 'a': player.moveR = false; break;
     case 'd': player.moveL = false; break;
}
}