class Player extends Guy {
  boolean isAim=false;
  PVector mov = new PVector(0, 0, 0);
  PVector dis = new PVector(0, 0, 0);
  
  Player() {
  super();
  dis.x = screenW/2;
  dis.y = screenH/2;
  radius = 10;
  diameter = radius*2;
  speed = 30/diameter;
  metaSpeed = speed/3;
  canMove = true;
  direction = (float)Math.atan2(mouseY - loc.y, mouseX - loc.x);
  health = 100+diameter;
  mov.x = 0;
  mov.y = 0;
  loc.set(screenW/2, screenH/2);
  weapon = autoGun;
  }
  
  void update() {
    direction = (float)Math.atan2(mouseY - dis.y, mouseX - dis.x);
  }
  
  void playerUpdate() {
    player.checkWeapon();
    move();
    display();
    weapon.weaponUpdate();
  }  
  
  void move() {
    if (canMove == true) {
      PVector Fvel = new PVector(0, 0, 0);
      PVector Bvel = new PVector(0, 0, 0);
      PVector Rvel = new PVector(0, 0, 0);
      PVector Lvel = new PVector(0, 0, 0);
      if (moveF == true) {
        Fvel = PVector.fromAngle(direction);
      }
      if (moveB == true) {
        Bvel = PVector.fromAngle(direction+pi);
      }
      if (moveR == true) {
        Rvel = PVector.fromAngle(direction+(pi*1.5));
      }
      if (moveL == true) {
        Lvel = PVector.fromAngle(direction+(pi/2));
      }
      vel = Fvel;
      vel.add(Bvel);
      vel.add(Rvel);
      vel.add(Lvel);
      if (isMeta) { vel.setMag(metaSpeed);}
      else {vel.setMag(speed);}
    mov.add(vel);
    loc.add(vel);
    }
  }
  
  void display() {
    fill(0, 0, 255);
    ellipse(dis.x, dis.y, diameter, diameter);
    line(dis.x, dis.y, dis.x + (float)(radius*Math.cos(direction)), dis.y + (float)(radius*Math.sin(direction)));
  }
}