module Wrapper(input  clk,reset,output reg check);
localparam nk=4;
reg resetDec;
reg [3:0]counter;
reg [nk*32-1:0] key;
reg [127:0] state_in;
wire [127:0] encrypted,decrypted,final;



cipher #(.nk(nk)) encrypt (clk,reset,state_in,key,encrypted);
Inv_cipher #(.nk(nk)) decrypt (clk,resetDec,encrypted,key,decrypted);


always@(posedge clk)
begin
if (reset)
begin
counter=0;
resetDec=1;
key='h000102030405060708090a0b0c0d0e0f;
state_in='h00112233445566778899aabbccddeeff;
end
if(counter<5)
counter=counter+1;
if(counter==5)
resetDec=0;
if(decrypted==state_in)
check=1;
else
check=0;
end
endmodule
