ECE281_Lab2
===========
####Prelab
Truth Table:

![alt text](https://github.com/mbergstedt/ECE281_Lab2/blob/master/TruthTable.JPG?raw=true)

Schematic:

![alt text](https://github.com/mbergstedt/ECE281_Lab2/blob/master/Schematic.JPG?raw=true)

Interface:

![alt text](https://github.com/mbergstedt/ECE281_Lab2/blob/master/Interface.JPG?raw=true)

Adder Testbench:

![alt text](https://github.com/mbergstedt/ECE281_Lab2/blob/master/Testbench_Screenshot.JPG?raw=true)
####Lab
Lab Testbench:

![alt text](https://github.com/mbergstedt/ECE281_Lab2/blob/master/Lab2_Screenshot.JPG?raw=true)

After getting the prelab adder to work, I just included it as a component in the lab.  I then made four instantiations of the component to string together.  To string the carry out of one to the carry in of the next one, I made signals for the carry outs of each adder and then used those values as the carry ins of the next adder.  To determine addition or subtraction, I created a mux component that took in the button value and the second four bit number.  Based on the value of button it would either output the two's complement of the number or the original number.  I used the value that was output by the mux in the second vector input of the adders.

For the functionality check, I ran through values of Bin to check that the lights were correctly matching the input, then I turned on switches for Ain and Bin to check that the values would carry from one slot to the next.  For the subtractor, I checked with two of the switches on for Ain and one on for Bin, and then I pushed the button that caused Bin to become the two's complement of itself.  Afterwards, functionality was confirmed by Capt Silva for the adder and subtractor.

####Documentation
I googled "if statement in vhdl" and saw that it must be put in a process.  I used C3C Redhead's idea of using it in a second component called mux.
