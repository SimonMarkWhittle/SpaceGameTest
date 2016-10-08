class Thing {
  float radius, speed, direction, health, diameter, mass, temp, hThresh, cThresh, heating, cooling, insul, acidResist, eResist, eConduct;
  ArrayList<Effect> effects;
  boolean isAlive=true, canMove=true, isOnFire=false, isMelt=false, isRattle=false;
  
  PVector loc = new PVector(0, 0, 0);
  PVector vel = new PVector(0, 0, 0);
  
  Thing() {}
  
  void update() {}
  
  void move() {}
}