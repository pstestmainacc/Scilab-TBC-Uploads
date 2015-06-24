//Example 8.35
clc
disp("A binary counter with a modulus greater than 16 can be built by cascading 74X163s. When counters are cascaded, CLK, CLR'' and LD'' of all the 74X163s are connected in parallel, so that all of them count or are cleared or loaded at the same time. The RCO signal drives the ENT input of the next counter. The fig.8.73 shows modulo-60 counter. To have a modulo 60 count we need at least 6-bit counter, thus two 74X163s are cascaded. Counter is designed to count from 196 to 255. The MAXCNT signal detects the state 255 and stops the counter util GO'' is asserted. When GO'' is asserted the counter is reloaded with 196 (binary 1100 0100) and counts upto 255. To enable counting, CNTEN is connected to the ENP inputs in parallel. A NAND gate assets RELOAD'' to get back to state 196 only if GO'' is asserted and the counter is in state 255.")