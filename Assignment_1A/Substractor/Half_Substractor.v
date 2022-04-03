module Half_Substractor(input X,input Y,output D,output B);
    assign D = X ^ Y;
    assign B = (~X) & Y;
endmodule