class AutoGun extends Weapon {
  
  boolean autoFire = false;
  
  AutoGun() {super();}
  /*  
  void leftPress() {
    if (spaceMeta && rightDown) {
      bothMetaPrimaryPress();
    }
    else if (spaceMeta) {
      spaceMetaPrimaryPress();
    }
    else if (rightDown) {
      rightDownPrimaryPress();
    }
    else {
      primaryPress();
    }
  }
  void leftRelease() {
     if (spaceMeta && rightDown) {
      bothMetaPrimaryRelease();
    }
    else if (spaceMeta) {
      spaceMetaPrimaryRelease();
    }
    else if (rightDown) {
      rightDownPrimaryRelease();
    }
    else {
      primaryRelease();
    } 
  }
  
  void rightPress() {
    if (spaceMeta) {
      metaSecondaryPress();
    }
    else {
      secondaryPress();
    }
  }
  
  void rightRelease() {
    if (spaceMeta) {
      metaSecondaryRelease();
    }
    else {
      secondaryRelease();
    }
  }
  */
  void primaryPress() {print("shooty dooty "); autoFire = true;}
  void primaryRelease() {println("shootied"); autoFire = false;}

  void spaceMetaPrimaryPress() {print("bashem smashem ");}
  void spaceMetaPrimaryRelease() {println("bashioum'd");}

  void rightDownPrimaryPress() {print("zoomieShootie "); autoFire = true;}
  void rightDownPrimaryRelease() {println("zoomieShootied"); autoFire = false;}
  
  void bothMetaPrimaryPress() {spaceMetaPrimaryPress();}
  void bothMetaPrimaryRelease() {spaceMetaPrimaryRelease();}
  
  void secondaryPress() {print("zoomie doomie");}
  void secondaryRelease() {
    if (!leftDown) {
      autoFire = false;
    }    
    println("zoomied ");
  }
  
  void metaSecondaryPress() {print("sprain prain "); autoFire = true;}
  void metaSecondaryRelease() {println("sprait"); autoFire = false;}
  
  void checkAutoFire() {
    if (autoFire) {print("ratata");}
  }
  
  void checkEffects() {}
  
  void weaponUpdate() {
    checkAutoFire();
  }
}