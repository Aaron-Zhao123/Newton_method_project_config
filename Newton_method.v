module Newton_method(
x_value,
operand_two,
subtrahend_one,
minuend_one,
//b_value,
numerator_one,
divisor_one,

subtrahend_two,
minuend_two,
mul_three,
subtrahend_three,
minuend_three,
mul_four,
operand_four,
numerator_two,
divisor_two,
subtrahend_four,
minuend_four,
clk,
//q_value,
product_one,
product_two,
diff_one,
quotient_one,
diff_two,
product_three,
diff_three,
product_four,
quotient_two,
diff_four,

//read_indicator_div,
//write_enable_div,
//mul_one_output_ready,
//div_output_ready,
In_vd_mul_one,
Out_rd_mul_one,
In_rd_mul_one,
Out_vd_mul_one,

In_vd_sub_one, 
Out_rd_sub_one,
In_rd_sub_one,
Out_vd_sub_one,


In_vd_mul_two,
Out_rd_mul_two,
In_rd_mul_two,
Out_vd_mul_two,

In_vd_div_one,
Out_rd_div_one,
In_rd_div_one,
Out_vd_div_one,

In_vd_sub_two, 
Out_rd_sub_two,
In_rd_sub_two,
Out_vd_sub_two,

In_vd_mul_three,
Out_rd_mul_three,
In_rd_mul_three,
Out_vd_mul_three,

In_vd_sub_three,
Out_rd_sub_three,
In_rd_sub_three,
Out_vd_sub_three,

In_vd_mul_four,
Out_rd_mul_four,
In_rd_mul_four,
Out_vd_mul_four,

In_vd_div_two,
Out_rd_div_two,
In_rd_div_two,
Out_vd_div_two,

In_vd_sub_four,
Out_rd_sub_four,
In_rd_sub_four,
Out_vd_sub_four,

);
	input[1:0] x_value;
	input[1:0] mul_three,mul_four;
	input[1:0] operand_two,operand_four;
	input[1:0] numerator_one,divisor_one,numerator_two,divisor_two;
	input clk;
	//output mul_one_output_ready,div_output_ready;
	//reg mul_one_output_ready,div_output_ready;
	output[1:0] product_one,product_two,product_three,quotient_one,product_four,quotient_two;
	wire read_indicator_div,read_indicator_div_two;
	wire[1:0] STATE_mul_one,STATE_div,STATE_div_two,STATE_mul_two,STATE_mul_three,STATE_mul_four;
	//wire write_enable_div;
	wire[6:0] comp_cycle_mul_one,computation_cycle_div,comp_cycle_mul_two,comp_cycle_mul_three,comp_cycle_mul_four,computation_cycle_div_two;
	wire[8:0] cnt_mul_one,cnt_mul_two,cnt_mul_three,cnt_mul_four,cnt_div,cnt_div_two;
	wire fixing_div,fixing_div_two;
	//output[1:0] sum;

	//output [1:0] numerator_one;
	input In_vd_mul_one,Out_rd_mul_one;
	output In_rd_mul_one,Out_vd_mul_one;
	
	input In_vd_sub_one,Out_rd_sub_one;
	output In_rd_sub_one,Out_vd_sub_one;
	
	input[1:0] subtrahend_one,minuend_one,subtrahend_two,minuend_two,subtrahend_three,minuend_three,subtrahend_four,minuend_four;
	output[1:0] diff_one,diff_two,diff_three,diff_four;
	
	input In_vd_mul_two,Out_rd_mul_two;
	output In_rd_mul_two,Out_vd_mul_two;
	
	
	input In_vd_div_one,Out_rd_div_one;
	output In_rd_div_one,Out_vd_div_one;
	
	input In_vd_sub_two,Out_rd_sub_two;
	output In_rd_sub_two,Out_vd_sub_two;
	
	input In_vd_mul_three,Out_rd_mul_three;
	output In_rd_mul_three,Out_vd_mul_three;
	
	input In_vd_sub_three,Out_rd_sub_three;
	output In_rd_sub_three,Out_vd_sub_three;
	
	input In_vd_mul_four,Out_rd_mul_four;
	output In_rd_mul_four,Out_vd_mul_four;
	
	input In_vd_div_two,Out_rd_div_two;
	output In_rd_div_two,Out_vd_div_two;
	
	input In_vd_sub_four,Out_rd_sub_four;
	output In_rd_sub_four,Out_vd_sub_four;
	
	
	Multiplier mul1(x_value,x_value,product_one,clk,STATE_mul_one,comp_cycle_mul_one,cnt_mul_one,In_vd_mul_one,Out_rd_mul_one,In_rd_mul_one,Out_vd_mul_one);

	Multiplier mul2(operand_two,operand_two,product_two,clk,STATE_mul_two,comp_cycle_mul_two,cnt_mul_two,In_vd_mul_two,Out_rd_mul_two,In_rd_mul_two,Out_vd_mul_two);


	subtraction sub_one(clk,subtrahend_one,minuend_one,diff_one,In_vd_sub_one,In_rd_sub_one,Out_vd_sub_one,Out_rd_sub_one);
	
	subtraction_two sub_two(clk,subtrahend_two,minuend_two,diff_two,In_vd_sub_two,In_rd_sub_two,Out_vd_sub_two,Out_rd_sub_two);
	
		
	On_line_divider divider(clk,numerator_one,divisor_one,STATE_div,cnt_div,computation_cycle_div,quotient_one,read_indicator_div,fixing_div,In_vd_div_one,In_rd_div_one,Out_vd_div_one,Out_rd_div_one);
	
	Multiplier_stage_two mul3(mul_three,mul_three,product_three,clk,STATE_mul_three,comp_cycle_mul_three,cnt_mul_three,In_vd_mul_three,Out_rd_mul_three,In_rd_mul_three,Out_vd_mul_three);
	
	subtraction_three sub_three(clk,subtrahend_three,minuend_three,diff_three,In_vd_sub_three,In_rd_sub_three,Out_vd_sub_three,Out_rd_sub_three);
	
	
	Multiplier_four mul4(mul_four,operand_four,product_four,clk,STATE_mul_four,comp_cycle_mul_four,cnt_mul_four,In_vd_mul_four,Out_rd_mul_four,In_rd_mul_four,Out_vd_mul_four);
	
	
	On_line_divider_stage_two divider2(clk,numerator_two,divisor_two,STATE_div_two,cnt_div_two,computation_cycle_div_two,quotient_two,read_indicator_div_two,fixing_div_two,In_vd_div_two,In_rd_div_two,Out_vd_div_two,Out_rd_div_two);
	
	subtraction_four sub_four(clk,subtrahend_four,minuend_four,diff_four,In_vd_sub_four,In_rd_sub_four,Out_vd_sub_four,Out_rd_sub_four);
/*	On_line_adder adder(clk,1'b1,x_value,x_value,sum);

	*/

	
endmodule
