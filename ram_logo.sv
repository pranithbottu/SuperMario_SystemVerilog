/*
 * ECE385-HelperTools/PNG-To-Txt
 * Author: Rishi Thakkar
 *
 */

module  ram_logo
(
		input [17:0] read_address,
		output logic [23:0] output_color
);

// mem has width of 4 bits and a total of 400 addresses
logic [3:0] mem [0:61951];

logic [23:0] pal [4:0];
assign pal[0] = 24'h800080;
assign pal[1] = 24'h000000;
assign pal[2] = 24'hFFCCC5;
assign pal[3] = 24'h994E00;
assign pal[4] = 24'h00A2E8;

assign output_color = pal[mem[read_address]];

initial
begin
	 $readmemh("C:/ece385/final_project/ECE385-HelperTools-master/PNG To Hex/On-Chip Memory/sprite_bytes/mario_logo.txt", mem);
end

endmodule
