class Attack extends Thing {
  float timer = 0;
  boolean loopable = false;
  String name;
  Guy g;
  
  Attack() {
    super();
  }
  void Attack(String n, float t, boolean l, Guy guy) {
    name = n;
    timer = t;
    loopable = l;
    g = guy;
  }
  
  void run() {
    display();
  }
  
  void display() {}
  
  void time() {
    if (timer > 0) {
      timer -= 0.01;
      run();
    }
  }
}

class Slash extends Attack {
  
  Slash() {
    super();
  }
}