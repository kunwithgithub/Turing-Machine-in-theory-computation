// TM deciding { w in {0,1}* | w = w^R }
states =              {REJECT,A,ACCEPT,CARRYONE,STATE}
input_alphabet =      {0,1,^,:,L,M,x,y,$,A}
tape_alphabet_extra = {_}
start_state =         STATE
accept_state =        ACCEPT
reject_state =        REJECT
num_tapes =           5
delta =
    
    
    STATE,:???0->STATE,:???0,SSRRR; 
    STATE,:???1->STATE,:???1,SSRRR; 
    STATE,:???$->STATE,:???$,SSRRR; 
    STATE,:???_->STATE,:???_,RSLLL; 
    
    STATE,M????->STATE,M????,RSSSS;
    
    STATE,^????->STATE,^0$$$,RSSSS;
    
    STATE,L???0->STATE,L???0,SSLLL;
    STATE,L???1->STATE,L???1,SSLLL;
    STATE,L???$->STATE,L???$,RSRRR;
    
    STATE,1????->STATE,1???1,RSRRR;
    STATE,0????->STATE,0???0,RSRRR;
    
    
    STATE,_???0->STATE,_???0,SSSSL;
    STATE,_???1->STATE,_???1,SSSSL;

    STATE,_???$->ACCEPT,_???$,SSSSR;
    
    STATE,x???1->STATE,x?1?1,SSLLL;
    STATE,x???0->STATE,x?0?0,SSLLL;
    STATE,x???$->STATE,x???$,RSRRR;
    
    STATE,y???1->STATE,y??11,SSLLL;
    STATE,y???0->STATE,y??00,SSLLL;
    STATE,y???$->STATE,y???$,RSRRR;

    
    STATE,A100?->STATE,A0001,SSLLL;
    STATE,A000?->STATE,A0000,SSLLL;
    
    STATE,A101?->STATE,A1010,SSLLL;
    STATE,A001?->STATE,A0011,SSLLL;
    
    STATE,A110?->STATE,A1100,SSLLL;
    STATE,A010?->STATE,A0101,SSLLL;
    
    STATE,A011?->STATE,A1110,SSLLL;
    STATE,A111?->STATE,A1111,SSLLL;
    
    STATE,A?$??->STATE,A0$??,RSRRR;
