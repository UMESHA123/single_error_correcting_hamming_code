`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:29:48 01/08/2022 
// Design Name: 
// Module Name:    hamming_code_in_verilog 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module hamming_code_in_verilog(d_out,x2,x4,x6,x7,x8,x9,x10,x11,x12,x13,x16,x19,x22,x23,x24,x25,x26,error_input_pin,d_in);

input [3:0]d_in;
output x2,x4,x6,x7,x8,x9,x10,x11,x12,x13,x16,x19,x22,x23,x24,x25,x26;
input [6:0]error_input_pin;
output [3:0]d_out;


wire x1,x3,x5,x14,x15,x17,x18,x20,x21,a1,a2,a3,a4;


// for parity bit p1
//for xor1 d0 and d1 are the input
xor xor_out1(x1,d_in[0],d_in[1]);
//for xor2 d3 and out of xor1 are the input
xor xor_out2(x2,d_in[3],x1);
//end


//for parity bit p2
//for xor3 the d0 and d2 are the input 
xor xor_out3(x3,d_in[0],d_in[2]);
//for xor4 the d3 and output of the xor3 the input
xor xor_out4(x4,d_in[3],x3);
//end


//for parity bit p3
//for xor5 the d1 and d2 are the input 
xor xor_out5(x5,d_in[1],d_in[2]);
//for xor6 the output of the xor5 and the d3 are the input
xor xor_out6(x6,d_in[3],x5);
//end


//for genereteing the error
xor xor_out7(x7,x2,error_input_pin[0]);
xor xor_out8(x8,x4,error_input_pin[1]);
xor xor_out9(x9,d_in[0],error_input_pin[2]);
xor xor_out10(x10,x6,error_input_pin[3]);
xor xor_out11(x11,d_in[1],error_input_pin[4]);
xor xor_out12(x12,d_in[2],error_input_pin[5]);
xor xor_out13(x13,d_in[3],error_input_pin[6]);
//end


//for error position detection 
xor xor_out14(x14,x2,x9);
xor xor_out15(x15,x11,x13);
xor xor_out16(x16,x14,x15);

xor xor_out17(x17,x4,x9);
xor xor_out18(x18,x12,x13);
xor xor_out19(x19,x17,x18);

xor xor_out20(x20,x6,x11);
xor xor_out21(x21,x12,x13);
xor xor_out22(x22,x20,x21);
//error position detection end



//error currecter
and and_out_1(a1,~x16,x19,x22);
and and_out_2(a2,x16,~x19,x22);
and and_out_3(a3,x16,x19,~x22);
and and_out_4(a4,x16,x19,x22);


xor xor_out23(d_out[0],a1,x9);
xor xor_out24(d_out[1],a2,x11);
xor xor_out25(d_out[2],a3,x12);
xor xor_out26(d_out[3],a4,x13);

//error currectre end

endmodule
