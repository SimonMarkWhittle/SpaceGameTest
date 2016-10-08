class Guy extends Thing {
  Weapon weapon;
  ArrayList<Guy> enemies;
  boolean canFdash=false, canBdash=false, canRdash=false, canLdash=false, moveF=false, moveB=false, moveL=false, moveR=false, isMeta=false, isGrapple=false, isWrestle=false;
  float metaSpeed = speed/3;
  
  Guy() {super();}
  
  void update() {}
  
  void move() {}
  
  void checkWeapon() {
    if (weapon.rightDown) {
      isMeta = true;
    }
    else isMeta = false;
  }
}