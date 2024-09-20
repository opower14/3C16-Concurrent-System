//Practical 2 Threads
//
// Task: Modify code below to ensure action-functions run atomically.
// 
//     Do not modify the order in which action-functions are called.
//     Do not add or modify action-function calls.

pthread_mutex_t mutex1 = PTHREAD_MUTEX_INITIALIZER;
pthread_mutex_t mutex2 = PTHREAD_MUTEX_INITIALIZER;

//changed by adding these condition initialisers
pthread_cond_t cond1 = PTHREAD_COND_INITIALIZER;
pthread_cond_t cond2 = PTHREAD_COND_INITIALIZER;
pthread_cond_t cond3 = PTHREAD_COND_INITIALIZER;
pthread_cond_t cond4 = PTHREAD_COND_INITIALIZER;
pthread_cond_t cond5 = PTHREAD_COND_INITIALIZER;

//changed by adding this it is probabaly not needed
int mut1, mut2 = 1;

//changed by placing the conditions into function
void updateSharedResourceMutex1() {
    pthread_mutex_lock(&mutex1);
    gR = 7;
    pthread_cond_signal(&cond1);
    gR = 4;
    pthread_cond_signal(&cond2);
    gR = 10;
    pthread_cond_signal(&cond3);
    pthread_mutex_unlock(&mutex1);
}

//changed by placing the conditions into function
void updateSharedResourceMutex2() {
    pthread_mutex_lock(&mutex2);
    gA = 0;
    pthread_cond_signal(&cond4);
    gA = 2;
    pthread_cond_signal(&cond5);
    pthread_mutex_unlock(&mutex2);
}

void *Thread1(void *threadid) {
  printf( "Thread1 Running\n" );
  //changed by adding the below if statement should run with just calling the function
  if(mut1) {
    updateSharedResourceMutex1();
    mut1 = 0;
  }

  pthread_mutex_lock(&mutex1);
  action11();
  pthread_mutex_unlock(&mutex1);
  action12();//donesn't need locking as simply updates the value doesn't depend on previous value
  pthread_mutex_lock(&mutex1);
  action13();
  pthread_mutex_unlock(&mutex1);
  action14();//donesn't need locking as simply updates the value doesn't depend on previous value
  pthread_mutex_lock(&mutex1);
  action15();
  pthread_mutex_unlock(&mutex1);
  action16();//never needs locking only one using variable
  //changed by adding a lock and unlock and condition broadcast
  pthread_mutex_lock(&mutex1);
  action17();
  pthread_cond_broadcast(&cond1);
  pthread_mutex_unlock(&mutex1);
  pthread_mutex_lock(&mutex1);
  DISPLAY("Waiting for %s\n","(gR == 7)");
  while (!((gR == 7))) {
    pthread_cond_wait(&cond1, &mutex1);
  };
  //changed by movin them inside unsure as to why i had them outside
  puff();
  action18();
  pthread_mutex_unlock(&mutex1);
  //puff();
  //action18();

  pthread_exit(NULL);
}


void *Thread2(void *threadid) {
  printf( "Thread2 Running\n" );
  //changed by adding the below if statement should run with just calling the function
  if(mut1) {
    updateSharedResourceMutex1();
    mut1 = 0;
  }

  action21();//donesn't need locking as simply updates the value doesn't depend on previous value
  pthread_mutex_lock(&mutex1);
  action22();
  pthread_mutex_unlock(&mutex1);
  action23();//never needs locking only one using variable
  action24();//donesn't need locking as simply updates the value doesn't depend on previous value
  pthread_mutex_lock(&mutex1);
  action25();
  pthread_mutex_unlock(&mutex1);
  pthread_mutex_lock(&mutex1);
  action26();
  pthread_mutex_unlock(&mutex1);
  //changed by adding a lock and unlock and condition broadcast
  pthread_mutex_lock(&mutex1);
  action27();
  pthread_cond_broadcast(&cond2);
  pthread_mutex_unlock(&mutex1);
  pthread_mutex_lock(&mutex1);
  DISPLAY("Waiting for %s\n","(gR == 4)");
  while (!((gR == 4))) {
    pthread_cond_wait(&cond2, &mutex1);
  };
  //changed by movin them inside unsure as to why i had them outside
  puff();
  action28();
  pthread_mutex_unlock(&mutex1);
  //puff();
  //action28();

  pthread_exit(NULL);
}


void *Thread3(void *threadid) {
  printf( "Thread3 Running\n" );
  //changed by adding the below if statement should run with just calling the function
  if(mut1) {
    updateSharedResourceMutex1();
    mut1 = 0;
  }

  action31();//donesn't need locking as simply updates the value doesn't depend on previous value
  action32();//never needs locking only one using variable
  action33();//donesn't need locking as simply updates the value doesn't depend on previous value
  pthread_mutex_lock(&mutex1);
  action34();
  pthread_mutex_unlock(&mutex1);
  pthread_mutex_lock(&mutex1);
  action35();
  pthread_mutex_unlock(&mutex1);
  //changed by adding a lock and unlock and condition broadcast
  pthread_mutex_lock(&mutex1);
  action36();
  pthread_cond_broadcast(&cond3);
  pthread_mutex_unlock(&mutex1);
  pthread_mutex_lock(&mutex1);
  DISPLAY("Waiting for %s\n","(gR == 10)");
  while (!((gR == 10))) {
    pthread_cond_wait(&cond3, &mutex1);
  };
  //changed by movin them inside unsure as to why i had them outside
  puff();
  action37();
  pthread_mutex_unlock(&mutex1);
  //puff();
  //action37();

  pthread_exit(NULL);
}


void *Thread4(void *threadid) {
  printf( "Thread4 Running\n" );
  //changed by adding the below if statement should run with just calling the function
  if(mut2) {
    updateSharedResourceMutex2();
    mut2 = 0;
  }

  action41();//donesn't need locking as simply updates the value doesn't depend on previous value
  pthread_mutex_lock(&mutex2);
  action42();
  pthread_mutex_unlock(&mutex2);
  action43();//never needs locking only one using variable
  pthread_mutex_lock(&mutex2);
  action44();
  pthread_mutex_unlock(&mutex2);
  pthread_mutex_lock(&mutex2);
  action45();
  pthread_mutex_unlock(&mutex2);
  action46();//donesn't need locking as simply updates the value doesn't depend on previous value
  //changed by adding a lock and unlock and condition broadcast
  pthread_mutex_lock(&mutex2);
  action47();
  pthread_cond_broadcast(&cond4);
  pthread_mutex_unlock(&mutex2);
  pthread_mutex_lock(&mutex2);
  DISPLAY("Waiting for %s\n","(gA < 1)");
  while (!((gA < 1))) {
    pthread_cond_wait(&cond4, &mutex2);
  };
  //changed by movin them inside unsure as to why i had them outside
  puff();
  action48();
  pthread_mutex_unlock(&mutex2);
  //puff();
  //action48();

  pthread_exit(NULL);
}


void *Thread5(void *threadid) {
  printf( "Thread5 Running\n" );
  //changed by adding the below if statement should run with just calling the function
  if(mut2) {
    updateSharedResourceMutex2();
    mut2 = 0;
  }

  pthread_mutex_lock(&mutex2);
  action51();
  pthread_mutex_unlock(&mutex2);
  action52();
  action53();//never needs locking only one using variable
  action54();
  pthread_mutex_lock(&mutex2);
  action55();
  pthread_mutex_unlock(&mutex2);
  pthread_mutex_lock(&mutex2);
  action56();
  pthread_mutex_unlock(&mutex2);
  //changed by adding a lock and unlock and condition broadcast
  pthread_mutex_lock(&mutex2);
  action57();
  pthread_cond_broadcast(&cond5);
  pthread_mutex_unlock(&mutex2);
  pthread_mutex_lock(&mutex2);
  DISPLAY("Waiting for %s\n","(gA > 1)");
  while (!((gA > 1))) {
    pthread_cond_wait(&cond5, &mutex2);
  };
  //changed by movin them inside unsure as to why i had them outside
  puff();
  action58();
  pthread_mutex_unlock(&mutex2);
  //puff();
  //action58();

  pthread_exit(NULL);
}


