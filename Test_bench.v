module Test_bench();
reg clk,reset;
wire check;

initial begin
clk=0;
reset=1;
#2
reset=0;
#500
reset=1;
#50
reset=0;

end

Wrapper test(clk,reset,check);

always
begin
clk=~clk;
#2;
end
endmodule

module Test_bench_cipher();

reg clk,reset;
reg [255:0]key;
reg [127:0]stateIn;
wire[127:0]stateOut;
Inv_cipher #(.nk(8))test(clk,reset,stateIn,key,stateOut);
//InvMixColumns mixing (stateIn,stateOut);
initial begin

clk=0;
reset=1;
stateIn=128'h00112233445566778899aabbccddeeff;

key='h000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f;
#1
reset=0;


end

always
begin
clk=~clk;
#2;
end




endmodule 

module Test_bench_key();

reg clk;
reg reset;
reg [127:0]key;
wire [1407:0]outKeys;
initial 
begin

reset=1;
clk=0;
key=128'h000102030405060708090a0b0c0d0e0f;
#1
reset=0;
#500
reset=1;
#100
reset=0;
end


KeyExpansion #(.nk(4)) test(clk,reset,key,outKeys);
always
begin
clk=~clk;
#2;
end



endmodule