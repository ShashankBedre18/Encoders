`timescale 1ns / 1ps

module tb_encoder4to2;

reg I0,I1,I2,I3;

wire Y1,Y0;

integer i;

encoder4to2 uut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .Y1(Y1),
    .Y0(Y0)
);

initial begin

$display("I3 I2 I1 I0 | Y1 Y0");
$monitor("%b %b %b %b | %b %b",I3,I2,I1,I0,Y1,Y0);

for(i=0;i<4;i=i+1)
begin
    I0=0; I1=0; I2=0; I3=0;

    case(i)
        0: I0=1;
        1: I1=1;
        2: I2=1;
        3: I3=1;
    endcase

    #10;

end

end

endmodule