class Game {
  String mode;
  
  Game(String m) {
  mode = m;
  }
  
  ArrayList<Guy> execute(ArrayList<Guy> gList) {
    if (mode.equals("Arena")) {
      gList = arena(gList);
    }
    
    return gList;
  }

  ArrayList<Guy> arena(ArrayList<Guy> gList) {
    for (Guy g : gList) {
      g.update();
    }
    return gList;
  }
}