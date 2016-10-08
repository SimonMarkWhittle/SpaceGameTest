class Guy extends Thing {
  Weapon weapon;
  ArrayList<Guy> enemies;
  boolean canFdash=false, canBdash=false, canRdash=false, canLdash=false, moveF=false, moveB=false, moveL=false, moveR=false, isSlow=false, isGrapple=false, isWrestle=false;
  float slowSpeed = speed/3;
  
  Guy() {super();}
  
  void update() {}
  
  void move() {}
  
  void checkWeapon() {
    isSlow = weapon.slowCheck();
  }
}