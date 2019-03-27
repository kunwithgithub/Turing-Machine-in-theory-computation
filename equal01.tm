// TM deciding { w in {0,1}* | w = w^R }
states =              {s,a,b,c,d,accept,reject}
input_alphabet =      {0,1}
tape_alphabet_extra = {x,y,_}
start_state =         s
accept_state =        accept
reject_state =        reject
num_tapes =           1
delta =
    s,y  ->  s,y,R;
    s,x  ->  s,x,R;
    s,_  ->  accept,_,R;
    s,0  ->  a,x,R;
    s,1  ->  c,x,R;
    
    a,y  ->  a,y,R;
    a,_  ->  reject,_,R;
    a,0  ->  a,0,R;
    a,1  ->  b,y,L;
    
    c,y  ->  c,y,R;
    c,_  ->  reject,_,R;
    c,1  ->  c,1,R;
    c,0  ->  d,y,L;   
    
    b,x  ->  s,x,R;
    b,y  ->  b,y,L;
    b,0  ->  b,0,L;
    
    d,x  ->  s,x,R;
    d,y  ->  d,y,L;
    d,1  ->  d,1,L;
    
    
    
    

    
    
    
    
