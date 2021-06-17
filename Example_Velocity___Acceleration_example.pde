Player p1 = new Player (100, 500);
Bullet b = new Bullet (500,400);

float gravity = 0.5;

void setup() {
  size(1920, 1000);
}
void draw () {
  background(255, 255, 255);
  p1.draw();
  p1.update();
 
  
  //Call Bullet
  b.draw();
  b.update(p1);
  
  
}

void keyPressed () {

  if (key == ' ') {

    p1.jump();
  }
  
  
  if (key =='s') {
    
    p1.shoot (b); //The player controll the bullet by calling shoot () function -- Lệnh này sẽ bắn nguyên cả object Bullet b ở dòng (2) dựa trên thông số lệnh trong thẻ bullet
   
  }
}


//Note Player sẽ kiểm soát hành động của bullet, action của bullet đã được tạo thành function trong tab bullet nên khi player ra lệnh, bullet sẽ chạy code
