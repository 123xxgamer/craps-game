Die d0, d1;
int target, score;
boolean alive;
void setup() {
  size(200, 200);
  d0 = new Die(25, height/2 - 25, 50,6);
  d1 = new Die(125, height/2 - 25, 50,6);
  textAlign(CENTER);
  textSize(30);
  restart();
}//setup
// still working

void draw() {
  background(150,220,250);
  fill(0);
  if (target==0) {
        background(150,220,250);
    text("No target",100,30);
  }
  else if (alive==false) {
    background(255,20,15);
    text("You lost!",100,170);
  }
  else {
    background(250,220,150);
    text("Target: "+target,100,30);
    text("Score: "+score,100,170);
  }
    d0.display();
  d1.display();
}//draw


void keyPressed() {
  if (key == ' ' && alive) {
    int roll;
    roll=d0.roll();
    roll+=d1.roll();
    updateScore(roll);
  }//roll
  if (key== 'r') {
    restart();
  }
}//if keyPressed

void restart() {
  target=0;
  score=0;
  d0.reset();
  d1.reset();
  alive=true;
}

void updateScore(int roll) {
  if (target==0) {
    if (roll==2) {
      alive=false;
    }
    else if (! (roll==7 || roll==11)) {
      target=roll;
    }
  }
  else {
    if (roll==7||roll==11) {
      alive=false;
    }
    else if (roll==target) {
      target=0;
    }
    else {
      score+=roll;
    }
  }
}
