class RangeAndRange extends Weapon {

  RangeAndRange() { super(); }

  DualedRange primary = new DualedRange();
  DualedRange secondary = new DualedRange();

  void primaryPress() {print("primary "); primary.shootPress();}
  void primaryRelease() {print("primary "); primary.shootRelease();}

  void rightDownPrimaryPress() {primaryPress();}
  void rightDownPrimaryRelease() {primaryRelease();}

  void spaceMetaPrimaryPress() {print("primary "); primary.zoomShootPress();}
  void spaceMetaPrimaryRelease() {print("primary "); primary.zoomShootRelease();}
  
  void bothMetaPrimaryPress() {spaceMetaPrimaryPress();}
  void bothMetaPrimaryRelease() {spaceMetaPrimaryRelease();}
  
  void secondaryPress() {print("secondary "); secondary.shootPress();}
  void secondaryRelease() {print("secondary "); secondary.shootRelease();}
  
  void metaSecondaryPress() {print("secondary "); secondary.zoomShootPress();}
  void metaSecondaryRelease() {print("secondary "); secondary.zoomShootRelease();}
  
  boolean slowCheck() {
    return spaceMeta;
  }
  
}

class MeleeAndMelee extends Weapon {

  MeleeAndMelee() { super(); }

  DualedMelee primary = new DualedMelee();
  DualedMelee secondary = new DualedMelee();

  void primaryPress() {print("primary "); primary.attackPress();}
  void primaryRelease() {print("primary "); primary.attackRelease();}

  void rightDownPrimaryPress() {primaryPress();}
  void rightDownPrimaryRelease() {primaryRelease();}

  void spaceMetaPrimaryPress() {print("primary "); primary.parryPress();}
  void spaceMetaPrimaryRelease() {print("primary "); primary.parryRelease();}
  
  void bothMetaPrimaryPress() {spaceMetaPrimaryPress();}
  void bothMetaPrimaryRelease() {spaceMetaPrimaryRelease();}
  
  void secondaryPress() {print("secondary "); secondary.attackPress();}
  void secondaryRelease() {print("secondary "); secondary.attackRelease();}
  
  void metaSecondaryPress() {print("secondary "); secondary.parryPress();}
  void metaSecondaryRelease() {print("secondary "); secondary.parryRelease();}
  
  boolean slowCheck() {
    return spaceMeta;
  }
  
}

class ShieldAndShield extends Weapon {

  ShieldAndShield() { super(); }

  DualedShield primary = new DualedShield();
  DualedShield secondary = new DualedShield();

  void primaryPress() {print("primary "); primary.bashPress();}
  void primaryRelease() {print("primary "); primary.bashRelease();}

  void rightDownPrimaryPress() {print("secondary "); secondary.parryPress();}
  void rightDownPrimaryRelease() {print("secondary "); secondary.parryRelease();}

  void spaceMetaPrimaryPress() {print("secondary "); secondary.bashPress();}
  void spaceMetaPrimaryRelease() {print("secondary "); secondary.bashRelease();}
  
  void bothMetaPrimaryPress() {print("primary "); primary.parryPress();}
  void bothMetaPrimaryRelease() {print("primary "); primary.parryRelease();}
  
  void secondaryPress() {print("secondary "); secondary.blockPress();}
  void secondaryRelease() {print("secondary "); secondary.blockRelease();}
  
  void metaSecondaryPress() {print("primary "); primary.blockPress();}
  void metaSecondaryRelease() {print("primary "); primary.blockRelease();}
  
}

class RangeAndMelee extends Weapon {

  RangeAndMelee() { super(); }
  
  DualedRange range = new DualedRange();
  DualedMelee melee = new DualedMelee();

  void primaryPress() {print("range "); range.shootPress();}
  void primaryRelease() {print("range "); range.shootRelease();}

  void rightDownPrimaryPress() {print("range "); range.zoomShootPress();}
  void rightDownPrimaryRelease() {print("range "); range.zoomShootRelease();}

  void spaceMetaPrimaryPress() {print("melee "); melee.attackPress();}
  void spaceMetaPrimaryRelease() {print("melee "); melee.attackRelease();}
  
  void bothMetaPrimaryPress() {print("melee "); melee.parryPress();}
  void bothMetaPrimaryRelease() {print("melee "); melee.parryRelease();}
  
  void secondaryPress() {print("zoomie ");}
  void secondaryRelease() {println("zoomie'd");}
  
  void metaSecondaryPress() {print("melee "); melee.blockPress();}
  void metaSecondaryRelease() {print("melee "); melee.blockRelease();}
  
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