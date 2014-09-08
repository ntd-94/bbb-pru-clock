/* clock.p 
    
    Creates a clock signal on P8.12
    Rob Murrer - 2014-09-08
*/

.origin 0
.entrypoint START

#include "clock.hp"

/* change delay to adjust time (approximate)
    comment out the define to get max clock of 66Mhz
    1 = 22.2 MHz
    2 = 15.4 MHz
    3 = 11.7 MHz
    4 = 9.5 MHz
    5 = 8.0 MHz
    6 = 6.9 MHz
    7 = 6.0 Mhz
*/
/*#define DELAY_TIME 7 */


// This will be run if DELAY_TIME is defined (slower)
#ifdef DELAY_TIME
START:
    SET r30.t14
    MOV r0, DELAY_TIME 

DELAY: 
    SUB r0,r0,1
    QBNE DELAY, r0,0
    
    CLR r30.t14

    MOV r0, DELAY_TIME

DELAY2:
    SUB r0, r0, 1
    QBNE DELAY2, r0, 0

    JMP START

// This will be run if DELAY_TIME is undefined (max speed)
#else
START:
    SET r30.t14
    CLR r30.t14
    JMP START

#endif
