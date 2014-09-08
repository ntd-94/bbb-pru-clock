# BBB PRU Clock program

Creates a clock signal using the PRU on the Beaglebone black.
By toggling the status of a digital GPIO pin, a consistent clock signal can be made.

The program uses PRU0 and pin P8.12.
This can be changed by editing the device tree overlay in device-tree/ and the clock.c #define.

## Installation

The following will compile all the code for the PRU and main cpu:
    
    make

Compile the device tree overlay and enable it:

    cd device-tree
    make enable


## Running
    
    ./clock





    
