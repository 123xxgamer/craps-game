class Die {
  int dx, dy;
  int dsize;
  int dvalue;
  int dsides;
  Die(int x, int y, int size, int sides) {
    dx=x;
    dy=y;
    dsize=size;
    dsides=sides;
    dvalue=int(random(1, 1+dsides));
  }//constructor
  void display() {
    fill(255);
    square(dx, dy, dsize);
    if (!(dvalue==0)) {
      fill(0);
      text(dvalue, dx+dsize/2, dy+dsize*2/3);
    }
  }//display
  int roll() {
    dvalue=int(random(1, 1+dsides));
    return dvalue;
  }//roll
  void reset() {
    dvalue=0;
  }
}//Die
