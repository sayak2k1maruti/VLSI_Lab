`include "Half_Substractor.v"
module Full_Substractor(input X,input Y,input Z,output D,output B);
    wire D1,D2,B1,B2;
    Half_Substractor HS1(.X(X),.Y(Y),.B(B1),.D(D1));
    Half_Substractor HS2(.X(D1),.Y(Z),.B(B2),.D(D2));
    assign B = B1 | B2;
    assign D = D2;
endmodule