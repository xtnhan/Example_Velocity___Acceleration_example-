class Bullet {
  float x;
  float y;
  float vx;
  float vy;

  boolean bullethold;

  //Constructor


  Bullet (float xx, float yy) {
    x = xx;
    y = yy;
    vx = 0;
    vy = 0;
    bullethold = true; //1st state of the bullet - True = is being held False = is released,
  }



  void draw () {
    circle(x, y, 10);
  }
  

  void update(Player p) {//Lấy dữ liệu từ class Player
    if (bullethold) {

      //if bullethold = true (is being held), do the code below
      x = p.x;
      y = p.y;
      
    } else {//Not being held

      vy = vy + gravity;
      y = y + vy;
      x = x + vx;
    }
  }


  void shoot (Player p) {// "Player" is now the data type  - variable p with data type: Player 
    
    bullethold = false;
    
    x = p.x; //Same coordinate with player
    y = p.y; //Same coordinate with player
    vx = 20; //Shoot to the right
  }
}
