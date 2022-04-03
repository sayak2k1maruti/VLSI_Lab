module Decoder(input A,B,output Q0,Q1,Q2,Q3);
    assign Q0 = (~A)&(~B);
    assign Q1 = (~A)&(B);
    assign Q2 = (A)&(~B);
    assign Q3 = (A)&(B);
endmodule