module Encoder(input Q0,Q1,Q2,Q3,output A,B);
    assign A = Q2 | Q3;
    assign B = Q1 | Q3;
endmodule