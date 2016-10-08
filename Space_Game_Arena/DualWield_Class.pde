class RangeAndRange extends Weapon {

  RangeAndRange() { super(); }

  void primaryPress() {print("primary shooty dooty ");}
  void primaryRelease() {println("primary shootied");}

  void rightDownPrimaryPress() {primaryPress();}
  void rightDownPrimaryRelease() {primaryRelease();}

  void spaceMetaPrimaryPress() {print("zoomie shooty Primary ");}
  void spaceMetaPrimaryRelease() {println("zoomie primary shootied");}
  
  void bothMetaPrimaryPress() {spaceMetaPrimaryPress();}
  void bothMetaPrimaryRelease() {spaceMetaPrimaryRelease();}
  
  void secondaryPress() {print("secondary shooty dooty ");}
  void secondaryRelease() {println("secondary shootied");}
  
  void metaSecondaryPress() {print("zoomie secondary shooty ");}
  void metaSecondaryRelease() {println("zoomie secondary shootied");}
  
  boolean slowCheck() {
    return spaceMeta;
  }
  
}

class MeleeAndMelee extends Weapon {

  MeleeAndMelee() { super(); }

  void primaryPress() {print("primary slashy ");}
  void primaryRelease() {println("primary slashied");}

  void rightDownPrimaryPress() {primaryPress();}
  void rightDownPrimaryRelease() {primaryRelease();}

  void spaceMetaPrimaryPress() {print("primary parry ");}
  void spaceMetaPrimaryRelease() {println("primary parried");}
  
  void bothMetaPrimaryPress() {spaceMetaPrimaryPress();}
  void bothMetaPrimaryRelease() {spaceMetaPrimaryRelease();}
  
  void secondaryPress() {print("secondary slashy ");}
  void secondaryRelease() {println("secondary slashied");}
  
  void metaSecondaryPress() {print("secondary parry ");}
  void metaSecondaryRelease() {println("secondary parried");}
  
  boolean slowCheck() {
    return spaceMeta;
  }
  
}

class ShieldAndShield extends Weapon {

  ShieldAndShield() { super(); }

  void primaryPress() {print("primary bashum smashum ");}
  void primaryRelease() {println("primary bashioum'd");}

  void rightDownPrimaryPress() {print("secondary parry ");}
  void rightDownPrimaryRelease() {println("secondary parry'd");}

  void spaceMetaPrimaryPress() {print("secondary bashum smashum ");}
  void spaceMetaPrimaryRelease() {println("secondary bashioum'd");}
  
  void bothMetaPrimaryPress() {print("primary parry ");}
  void bothMetaPrimaryRelease() {println("primary parry'd");}
  
  void secondaryPress() {print("secondary block ");}
  void secondaryRelease() {println("secondary block'd");}
  
  void metaSecondaryPress() {print("primary block ");}
  void metaSecondaryRelease() {println("primary block'd");}
  
}

class RangeAndMelee extends Weapon {

  RangeAndMelee() { super(); }

  void primaryPress() {print("shooty dooty ");}
  void primaryRelease() {println("shootied");}

  void rightDownPrimaryPress() {print("zoomie shooty ");}
  void rightDownPrimaryRelease() {println("zoomie shootied");}

  void spaceMetaPrimaryPress() {print("slashy gashy ");}
  void spaceMetaPrimaryRelease() {println("slashy gashy'd");}
  
  void bothMetaPrimaryPress() {print("parry garry ");}
  void bothMetaPrimaryRelease() {println("parry'd");}
  
  void secondaryPress() {print("zoomie ");}
  void secondaryRelease() {println("zoomie'd");}
  
  void metaSecondaryPress() {print("blocky ");}
  void metaSecondaryRelease() {println("blockie'd");}
  
}

class MeleeAndShield extends Weapon {

  MeleeAndShield() { super(); }

  DualedMelee melee = new DualedMelee();
  DualedShield shield = new DualedShield();

  void primaryPress() {print("melee "); melee.attackPress();}
  void primaryRelease() {print("melee "); melee.attackRelease();}

  void secondaryPress() {print("shield "); shield.blockPress();}
  void secondaryRelease() {print("shield "); shield.blockRelease();}

  void rightDownPrimaryPress() {print("shield "); shield.parryPress();}
  void rightDownPrimaryRelease() {print("shield "); shield.parryRelease();}

  void spaceMetaPrimaryPress() {print("melee "); melee.lungePress();}
  void spaceMetaPrimaryRelease() {print("melee "); melee.lungeRelease();}

  void metaSecondaryPress() {print("shield "); shield.bracePress();}
  void metaSecondaryRelease() {print("shield "); shield.braceRelease();}
  
  void bothMetaPrimaryPress() {print("shield "); shield.bashPress();}
  void bothMetaPrimaryRelease() {print("shield "); shield.bashRelease();}
  
}

class RangeAndShield extends Weapon {

  RangeAndShield() { super(); }
  
  DualedRange range = new DualedRange();
  DualedShield shield = new DualedShield();
  
  void primaryPress() {print("range "); range.shootPress();}
  void primaryRelease() {print("range "); range.shootRelease();}

  void secondaryPress() {print("zoomie ");}
  void secondaryRelease() {println("zoomie'd");}

  void rightDownPrimaryPress() {print("range "); range.zoomShootPress();}
  void rightDownPrimaryRelease() {print("range "); range.zoomShootRelease();}

  void spaceMetaPrimaryPress() {print("shield "); shield.bashPress();}
  void spaceMetaPrimaryRelease() {print("shield "); shield.bashRelease();}

  void metaSecondaryPress() {print("shield "); shield.blockPress();}
  void metaSecondaryRelease() {print("shield "); shield.blockRelease();}
  
  void bothMetaPrimaryPress() {print("shield "); shield.parryPress();}
  void bothMetaPrimaryRelease() {print("shield "); shield.parryRelease();}
  
}

class DualedRange {

  DualedRange() {}
  
  void shootPress() {print("shooty dooty ");}
  void shootRelease() {println("shooty'd");}

  void zoomShootPress() {print("zoomie shooty ");}
  void zoomShootRelease() {println("zoomie shooty'd");}
  
  void bashPress() {print("bashum smashum ");}
  void bashRelease() {println("bashioum'd");}
  
}

class DualedMelee {

   DualedMelee() {}
   
   void attackPress() {print("slashum gashum ");}
   void attackRelease() {println("slashum'd");}
   
   void blockPress() {print("blockum ");}
   void blockRelease() {println("blockum'd");}
   
   void parryPress() {print("parry garry ");}
   void parryRelease() {println("parry'd");}
   
   void lungePress() {print("lungee bungee ");}
   void lungeRelease() {println("lungee'd");}
}

class DualedShield {

  DualedShield() {}
  
  void bashPress() {print("bashum smashum ");}
  void bashRelease() {println("bashioum'd");}
  
  void blockPress() {print("blockem ");}
  void blockRelease() {println("blockem'd");}
  
  void parryPress() {print("parry garry ");}
  void parryRelease() {println("parry'd");}
  
  void bracePress() {print("bracy ");}
  void braceRelease() {print("bracy'd");}
  
}