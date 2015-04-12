% prolog
word(abalone,a,b,a,l,o,n,e).
word(abandon,a,b,a,n,d,o,n).
word(enhance,e,n,h,a,n,c,e).
word(anagram,a,n,a,g,r,a,m).
word(connect,c,o,n,n,e,c,t).
word(elegant,e,l,e,g,a,n,t).

crosswd(H1,H2,H3,V1,V2,V3) :-
    word(H1,H1_1,H1_V1,H1_3,H1_V2,H1_5,H1_V3,H1_7),
    word(H2,H2_1,H2_V1,H2_3,H2_V2,H2_5,H2_V3,H2_7),
    word(H3,H3_1,H3_V1,H3_3,H3_V2,H3_5,H3_V3,H3_7),
    word(V1,V1_1,H1_V1,V1_3,H2_V1,V1_5,H3_V1,V1_7),
    word(V2,V2_1,H1_V2,V2_3,H2_V2,V2_5,H3_V2,V2_7),
    word(V3,V3_1,H1_V3,V3_3,H2_V3,V3_5,H3_V3,V3_7).

