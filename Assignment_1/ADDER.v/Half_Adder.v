module Half_Adder(input X,input Y,output S,output C);
    assign S = X ^ Y; //Sum bit of HA
    assign C = X & Y;//Carry bit of HA
endmodule