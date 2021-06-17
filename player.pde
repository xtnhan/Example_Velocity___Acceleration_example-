class Player {


  float x;
  float y;
  float vx; //Velocity - horizontally
  float vy; //Velocity - vertically



  boolean bullethold;

  //Constructor

  Player (float xx, float yy) {
    x = xx;
    y = yy;
    vx = 0;
    vy = 0;
    bullethold = true;
  }

  void draw () { // void = return nothing!
    circle(x, y, 100);
  }


  void update() { //Tác động Gravity lên player - Rơi tự do

    //x = x + vx;
    vy = vy + gravity; // 1 vật thể khi rơi tự do sẽ được gán thêm gia tốc bằng cách gia thêm gravity liên tục - Equation này sẽ lặp đi lặp lại liên tục cho đến khi gặp IF Statement bên dưới
    y = y + vy; //Vị trí của y sẽ thay đổi

    if (y + 50>=height) {//Dừng khi chạm đất

      vy = 0;
      y = height - 50;
    }
  }

  void jump () {

    vy = vy - 10;
  }

  //Tạo function ra lệnh cho Bullet - CẦM NGUYÊN CÁI KHỐI BULLET trong main program mà SHOOT
  void shoot (Bullet b) { //Parameter) {// "Bullet" is now the data type - variable b with data type: Bullet

    b.shoot (this); //variable b được đặt theo b trong Parameter dòng 46 - có thể đặt tùy ý nhưng phải cùng 1 tên variable ở dòng 46 và 48 - CHẠY FUNCTION SHOOT () TRONG THẺ BULLET
  } //phần parameter (this) được thay thế cho parameter (Player p) trong function void shoot (Player p) - trong thẻ Bullet.
}
