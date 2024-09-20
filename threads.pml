//Practical 3 Threads
//
// Task: Modify code below to ensure action-functions run atomically.
// 
//     Do not modify the order in which action-functions are called.
//     Do not add or modify action-function calls.

chan proceed1 = [1] of { byte }; //channels to ensure correct order
chan proceed2 = [1] of { byte }; //channels to ensure correct order
chan proceed3 = [1] of { byte }; //channels to ensure correct order
chan proceed4 = [1] of { byte }; //channels to ensure correct order

int temp1 = 0;
int temp2 = 0;

proctype Thread1() {
  printf( "Thread1 Running\n" );

  action11(); //donesn't need atomic as simply updates the value doesn't depend on previous value
  atomic{action12();} //modifes using previous number needs to run through
  action13(); //donesn't need atomic as simply updates the value doesn't depend on previous value
  atomic{action14();} //modifes using previous number needs to run through
  printf("Waiting for (gY == 1)\n");
  atomic{
    proceed3?1; //takes in starter signal
    if
    :: gY == 1 -> {//checks if gY is 1
      action15(); //if it is proceed
      temp1 = 1; //increments temp to make sure it doesn't run again
    }
    :: else ->
      proceed4!1; //sends signal to proceed
    fi;
    if 
    :: temp2 == 0 -> //checks if action 15 has run
      proceed4!1; //if not sends signal
    :: else -> skip; //skip to make sure it doesn't get stuck
    fi;
  }

}


proctype Thread2() {
  printf( "Thread2 Running\n" );

  atomic{action21();} //modifes using previous number needs to run through
  action22(); //donesn't need atomic as simply updates the value doesn't depend on previous value
  atomic{
    action23(); //sets gY to either 1 or 6
    proceed3!1; //tells action15 to run regardless of result
  }
  action24(); //donesn't need atomic as simply updates the value doesn't depend on previous value
  atomic{action25();} //modifes using previous number needs to run through
}


proctype Thread3() {
  printf( "Thread3 Running\n" );

  atomic{action31();} //modifes using previous number needs to run through
  action32(); //donesn't need atomic as simply updates the value doesn't depend on previous value
  atomic{action33();} //modifes using previous number needs to run through
  action34(); //donesn't need atomic as simply updates the value doesn't depend on previous value
  printf("Waiting for (gY == 6)\n");
  atomic{
    proceed4?1; //once signal received it goes
    if
    :: gY == 6 -> {//double checks
      action35(); //changes gY to 1
      temp2 = 1; //increments temp so it doesn't run again
    }
    :: else ->
      proceed3!1; //if not sends signal
    fi;
    if 
    :: temp1 == 0 -> //checks if action 15 has run
      proceed3!1; //if not sends signal
    :: else -> skip; //skip to make sure it doesn't get stuck
    fi;
  }

}


proctype Thread4() {
  printf( "Thread4 Running\n" );

  action41(); //no other modifies that variable
  action42(); //donesn't need atomic as simply updates the value doesn't depend on previous value
  atomic{action43();} //modifes using previous number needs to run through
  atomic{action44();} //modifes using previous number needs to run through
  atomic{
    action45(); //makes gS 2
    proceed1!1; //sends signal to action56 as it needs gS to be < 3
  }
  printf("Waiting for (gS > 3)\n");
  atomic{
    proceed2?1; //goes past once signal received
    ((gS > 3)); //double checks
    action46(); //proceeds to modify gS
  }

}


proctype Thread5() {
  printf( "Thread5 Running\n" );

  action51();//no other modifies that variable
  atomic{action52();} //modifes using previous number needs to run through
  atomic{action53();} //modifes using previous number needs to run through
  action54(); //donesn't need atomic as simply updates the value doesn't depend on previous value
  atomic{
    action55(); //makes gS 4
    proceed2!1; //sends signal to action56 as it needs gS to be > 3
  }
  printf("Waiting for (gS < 3)\n");
  atomic{
    proceed1?1; //goes past once signal received
    ((gS < 3)); //double checks
    action56(); //proceeds to modify gS
  }

}


