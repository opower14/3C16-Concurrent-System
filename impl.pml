int a = 13; //to satisfy spec10
int d = 8; //to satisfy spec20
int e = 0; //to satisfy the first half of spec11
int h = 14; //to satisfy the first half of spec5
int k = 0; //to satisfy the first half of spec8
int r = 8; //to satisfy the first half of spec16
int t = 0; //to satisfy the first half of spec3 and spec4
int w = 15; //to satisfy spec13


init {
  printf("P3p2\n");
  t = 14; //to satisfy the rest of spec2, spec3 and spec4
  k = 5; //to satisfy the rest of spec8
  e = 4; //to satisfy the rest of spec11
  h = 6; //to satisfy the rest of spec5
  h = 8; //to satisfy the rest of spec6
  r = 13; //to satisfy the rest of spec16 and first half of spec17
  r = 4; //to satisfy the rest of spec17 and first half of spec18
  r = 5; //to satisfy the rest of spec18 and first half of spec19
  r = 14; //to satisfy the rest of spec19
  run mod(); //runs function to satisfy spec14 and spec15
}

proctype mod() {
  w = 8; //to satisfy part of spec14
  atomic{ //atomically changes w to 9 and r to -1 this is so that they happen at once
    //w = 8; //this is so at no time is w=8 and r>0 and no time w=9 and r>0 as they happen at the same time
    w = 9; //sets it to 9 second to satisfy spec15
    r = -1;
  }
  //r = -1;
}

