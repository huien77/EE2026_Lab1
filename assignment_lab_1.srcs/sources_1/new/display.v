`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2021 00:21:56
// Design Name: 
// Module Name: display
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module display(
    //switches
    input SW0,
    input SW1,
    input SW2,
    input SW3,
    input SW4,
    input SW5,
    input SW6,
    input SW7,
    input SW8,
    input SW9,
    //output of LEDs corresponding to switches
    output LD0,
    output LD1,
    output LD2,
    output LD3,
    output LD4,
    output LD5,
    output LD6,
    output LD7,
    output LD8,
    output LD9,
    //anode
    output AN0,
    output AN1,
    output AN2,
    output AN3,
    //segment LEDs
    output dp,
    output seg0,
    output seg1,
    output seg2,
    output seg3,
    output seg4,
    output seg5,
    output seg6
    
    );
    //set switches
    assign LD0 = SW0;
    assign LD1 = SW1;
    assign LD2 = SW2;
    assign LD3 = SW3;
    assign LD4 = SW4;
    assign LD5 = SW5;
    assign LD6 = SW6;
    assign LD7 = SW7;
    assign LD8 = SW8;
    assign LD9 = SW9;
    //password: 1 2 4 8 (A0221841N)
    //anode value: 1 (0001)
    assign AN0 = ~SW0 & SW1 & SW2 & ~SW3 & SW4 & ~SW5 & ~SW6 & ~SW7 & SW8 & ~SW9;
    assign AN1 = ~(~SW0 & SW1 & SW2 & ~SW3 & SW4 & ~SW5 & ~SW6 & ~SW7 & SW8 & ~SW9);
    assign AN2 = ~(~SW0 & SW1 & SW2 & ~SW3 & SW4 & ~SW5 & ~SW6 & ~SW7 & SW8 & ~SW9);
    assign AN3 = ~(~SW0 & SW1 & SW2 & ~SW3 & SW4 & ~SW5 & ~SW6 & ~SW7 & SW8 & ~SW9);
    //display N: seg2, seg4, seg6
    assign dp = 1;
    assign seg0 = 1;
    assign seg1 = 1;
    assign seg2 = ~AN0;
    assign seg3 = 1;
    assign seg4 = ~AN0;
    assign seg5 = 1;
    assign seg6 = ~AN0;
    
endmodule
