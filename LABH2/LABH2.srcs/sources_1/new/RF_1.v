`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: USTC
// Engineer: Melmaphother
// 
// Create Date: 2023/04/09 20:17:26
// Design Name: RF_1
// Module Name: RF_1
// Project Name: LABH2
// Target Devices: 
// Tool Versions: 
// Description: RF for experiment 1
// 
// Dependencies: none
// 
// Revision:v1.0
// Revision 0.01 - File Created
// Additional Comments:None
// 
//////////////////////////////////////////////////////////////////////////////////

module RF_1(
  input clk, // 时钟信号
  input [4: 0] read_address1, // 读地址信号
  input [4: 0] read_address2,
  input [4: 0] write_address, // 写地址信号
  input [31: 0] data_in, // 写入数据信号
  input write_enable, // 写使能信号
  output  [31: 0] data_out1, // 读出数据信号
  output  [31: 0] data_out2
);
//Write First Mode
//address is 32 bits
//data is 32 bits

reg [31: 0] rf [0: 31]; // 存储器数组，256个8位单元

always @ (posedge clk) begin
  if (write_enable && write_address) begin
    //写入有效且写入地址不为0
    rf[write_address] <= data_in; // 写入数据
  end
  rf[0] <= 0;
end
assign  data_out1 = rf[read_address1]; // 读出数据
assign  data_out2 = rf[read_address2];
integer  i;
initial begin
    for (i = 0; i < 32; i = i + 1)begin
        rf[i] = i;
    end
end

endmodule

