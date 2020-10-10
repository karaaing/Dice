void setup()
{
  size(500, 500);
  framerate(9);
  noLoop();

}
void draw()
{
  textAlign(CENTER);
  textSize(25);
  background(227,236,243);
  loop();
  int sum = 0;
  for (int j = 1; j <= 6; j++){
    for (int i = 1; i <= 6; i++){
      Die kirby = new Die(-35 +(75*i), -50 +(75 * j));
      kirby.roll();
      kirby.show();
     sum += kirby.rollDice;
    }      
  }
    text("The Total is:  " + sum + "!", 225, 480);
}  

void mousePressed()
{
   noLoop();
   
}

void mouseReleased()
{
    loop();
}

class Die //models one single dice cube
{
  int myX, myY, rollDice;  
 
  Die(int x, int y) //constructor
  {
    myX = x;
    myY = y;
  }
  void roll()
  {
    rollDice = (int)(Math.random()*6) + 1;
  }
  void show()
  {
    fill(184, 250, 180);
    rect(myX, myY, 50, 50, 7);
  noFill();
     fill(47,155,86);
    if(rollDice == 1)
      ellipse(myX + 25, myY + 25, 10, 10);
     
    if(rollDice == 2){
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);    
    }
   
    if(rollDice == 3){
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    }
   
    if(rollDice == 4){
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
    }
   
    if(rollDice == 5){
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 25, myY + 25, 10, 10);
    }
   
    if(rollDice == 6){
      ellipse(myX + 10, myY + 40, 10, 10);
      ellipse(myX + 40, myY + 10, 10, 10);
      ellipse(myX + 10, myY + 10, 10, 10);
      ellipse(myX + 40, myY + 40, 10, 10);
      ellipse(myX + 10, myY + 25, 10, 10);
      ellipse(myX + 40, myY + 25, 10, 10);
    }
  }
}
