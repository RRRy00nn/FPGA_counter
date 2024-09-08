module counter
#(parameter	CNT_MAX	=	25'd24_999_999)
(

input wire sys_clk,
input wire sys_rst_n,

output reg led_out

);

//parameter	CNT_MAX = 25'd24_999_999;//全局
//localparam	CNT_MAX = 25'd24_999_999;//只能在模块内部

reg		[24:0]	cnt;//always 赋值 reg型

always@(posedge	sys_clk or negedge	sys_rst_n)//异步复位,cnt赋值
	if(sys_rst_n	==	1'b0)
		cnt	<=	25'd0;
	else	if(cnt==CNT_MAX)
		cnt	<=	25'd0;
		else
		cnt	<= cnt	+ 25'd1;
		
always@(posedge	sys_clk or negedge	sys_rst_n)
		if(sys_rst_n	==	1'b0)
			led_out <= 1'b0;
		else
			if(cnt == CNT_MAX)
			led_out <= ~led_out;
			else
			led_out <= led_out;
		
		
endmodule
