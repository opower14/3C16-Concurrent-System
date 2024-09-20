ltl spec1 { (t == 14)} //will fail as if this is true spec 3 and 4 will be false
ltl spec2 { <>((t == 14))} //true as will eventually turn 14
ltl spec3 { ((t == 0) U (t == 14))} //true changes from 0 - 14
ltl spec4 { ((t == 0) U []((t == 14)))} // true staye 14 after change
ltl spec5 { ((h == 14) U ((h == 6) || (h == 15)))} //initialsed to 14 then changed to 6
ltl spec6 { (<>((h == 6)) -> (<>((h == 8)) && [](!((h == 9)))))} //connot do both picked this one
ltl spec7 { (<>((h == 15)) -> (<>((h == 9)) && [](!((h == 8)))))} // cannot do both oicked other one
ltl spec8 { ((k == 0) U []((k == 5)))} //initialised to 0 then changed to 5 satisfies it
ltl spec9 { (<>((k < 15)) && []((k > 15)))} //will never be true
ltl spec10 { <>((a == 13))} // initialised to 13 will make this true
ltl spec11 { ((e == 0) U (e == 4))} //initialised to 0 then changed to 4 satisfies it
ltl spec12 { (w == 6)} //didnt do this as the others arnt possible if this is done
ltl spec13 { <>((w == 15))} //initialised to 15
ltl spec14 { ((r > 0) U (w == 8))} //changes to 8
ltl spec15 { ((r > 0) U []((w == 9)))} // atomically sets w to 9 and r to -1
ltl spec16 { ((r == 8) U (r == 13))} //initialised to 8 then changed to 13
ltl spec17 { (<>((r == 13)) U <>((r == 4)))} //after chnaged to 13 change to 4
ltl spec18 { (<>((r == 4)) U <>((r == 5)))} //after chnaged to 4 change to 5
ltl spec19 { (<>((r == 5)) U <>((r == 14)))} //after chnaged to 5 change to 14
ltl spec20 { (d == 8)} //initialised to 8
