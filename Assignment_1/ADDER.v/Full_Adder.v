`include "Half_Adder.v"
module Full_Adder(input X,input Y,input Z,output S,output C);
    wire S1,S2,C1,C2;
    Half_Adder HA1(.X(X),.Y(Y),.S(S1),.C(C1));
    Half_Adder HA2(.X(S1),.Y(Z),.S(S2),.C(C2));
    assign C = C1 | C2;
    assign S = S2;
endmodule