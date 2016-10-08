class Fists extends Weapon {
  
  Fists() {super();}
  
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
  
  void primaryPress() {print("rockem sockem ");}
  void primaryRelease() {println("socktem");}

  void spaceMetaPrimaryPress() {print("heavy rockem sockem ");}
  void spaceMetaPrimaryRelease() {println("heavy rocktem");}

  void rightDownPrimaryPress() {print("parry garry ");}
  void rightDownPrimaryRelease() {println("parryt");}
  
  void bothMetaPrimaryPress() {metaSecondaryPress();}
  void bothMetaPrimaryRelease() {metaSecondaryRelease();}
  
  void secondaryPress() {print("rockem blockem ");}
  void secondaryRelease() {println("blocktem ");}
  
  void metaSecondaryPress() {print("grapple dapple ");}
  void metaSecondaryRelease() {println("grapplt");}
  
  void checkEffects() {}
  
  void weaponUpdate() {}
}