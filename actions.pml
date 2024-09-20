// Practical 3 Action-Functions
//
// DO NOT MODIFY


inline action11() {
  unsigned loc1 : 7 ;
  loc1 = 10;
  printf("action11 loaded %d\n",loc1);
  gH = loc1;
}

inline action12() {
  unsigned loc1 : 7 ;
  loc1 = 2;
  printf("action12 loaded %d\n",loc1);
  gH = (gU * loc1);
  //puff();
  unsigned loc2 : 7 ;
  loc2 = 10;
  printf("action12 loaded %d\n",loc2);
  gX = (gQ + loc2);
}

inline action13() {
  unsigned loc1 : 7 ;
  loc1 = 9;
  printf("action13 loaded %d\n",loc1);
  gX = loc1;
}

inline action14() {
  unsigned loc1 : 7 ;
  loc1 = 6;
  printf("action14 loaded %d\n",loc1);
  gQ = (gQ + loc1);
}

inline action15() {
  unsigned loc1 : 7 ;
  loc1 = 5;
  printf("action15 loaded %d\n",loc1);
  gY = (gY + loc1);
}


inline action21() {
  unsigned loc1 : 7 ;
  loc1 = 5;
  printf("action21 loaded %d\n",loc1);
  gQ = (gQ + loc1);
  //puff();
  unsigned loc2 : 7 ;
  loc2 = 6;
  printf("action21 loaded %d\n",loc2);
  gN = (gN * loc2);
}

inline action22() {
  unsigned loc1 : 7 ;
  loc1 = 8;
  printf("action22 loaded %d\n",loc1);
  gU = loc1;
}

inline action23() {
  unsigned loc1 : 7 ;
  if
  ::  loc1 = 1;
  ::  loc1 = 6;
  fi

  printf("action23 chose (n.d.) %d\n",loc1);
  gY = loc1;
}

inline action24() {
  unsigned loc1 : 7 ;
  loc1 = 6;
  printf("action24 loaded %d\n",loc1);
  gF = loc1;
}

inline action25() {
  unsigned loc1 : 7 ;
  loc1 = 8;
  printf("action25 loaded %d\n",loc1);
  gX = (gX + loc1);
}


inline action31() {
  unsigned loc1 : 7 ;
  loc1 = 6;
  printf("action31 loaded %d\n",loc1);
  gQ = (gQ + loc1);
}

inline action32() {
  unsigned loc1 : 7 ;
  loc1 = 6;
  printf("action32 loaded %d\n",loc1);
  gX = loc1;
}

inline action33() {
  unsigned loc1 : 7 ;
  loc1 = 10;
  printf("action33 loaded %d\n",loc1);
  gN = (gN + loc1);
}

inline action34() {
  unsigned loc1 : 7 ;
  loc1 = 3;
  printf("action34 loaded %d\n",loc1);
  gU = loc1;
}

inline action35() {
  unsigned loc1 : 7 ;
  loc1 = 5;
  printf("action35 loaded %d\n",loc1);
  gY = (gY - loc1);
}


inline action41() {
  unsigned loc1 : 7 ;
  loc1 = 2;
  printf("action41 loaded %d\n",loc1);
  gL = loc1;
}

inline action42() {
  unsigned loc1 : 7 ;
  loc1 = 10;
  printf("action42 loaded %d\n",loc1);
  gF = loc1;
}

inline action43() {
  unsigned loc1 : 7 ;
  loc1 = 4;
  printf("action43 loaded %d\n",loc1);
  gH = (gH + loc1);
}

inline action44() {
  unsigned loc1 : 7 ;
  loc1 = 1;
  printf("action44 loaded %d\n",loc1);
  gU = (gU + loc1);
  //puff();
  unsigned loc2 : 7 ;
  loc2 = 2;
  printf("action44 loaded %d\n",loc2);
  gX = (gX * loc2);
}

inline action45() {
  unsigned loc1 : 7 ;
  loc1 = 2;
  printf("action45 loaded %d\n",loc1);
  gS = loc1;
}

inline action46() {
  unsigned loc1 : 7 ;
  loc1 = 4;
  printf("action46 loaded %d\n",loc1);
  gS = (gS - loc1);
}


inline action51() {
  unsigned loc1 : 7 ;
  loc1 = 1;
  printf("action51 loaded %d\n",loc1);
  gD = loc1;
}

inline action52() {
  unsigned loc1 : 7 ;
  loc1 = 10;
  printf("action52 loaded %d\n",loc1);
  gF = (gF + loc1);
}

inline action53() {
  unsigned loc1 : 7 ;
  loc1 = 3;
  printf("action53 loaded %d\n",loc1);
  gX = (gX + loc1);
  //puff();
  unsigned loc2 : 7 ;
  loc2 = 4;
  printf("action53 loaded %d\n",loc2);
  gQ = (gQ * loc2);
}

inline action54() {
  unsigned loc1 : 7 ;
  loc1 = 3;
  printf("action54 loaded %d\n",loc1);
  gH = loc1;
}

inline action55() {
  unsigned loc1 : 7 ;
  loc1 = 4;
  printf("action55 loaded %d\n",loc1);
  gS = loc1;
}

inline action56() {
  unsigned loc1 : 7 ;
  loc1 = 4;
  printf("action56 loaded %d\n",loc1);
  gS = (gS + loc1);
}


