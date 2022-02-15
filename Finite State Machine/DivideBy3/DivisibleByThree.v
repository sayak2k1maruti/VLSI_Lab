module DivisibleByThree(input clk , input RESET , output Q);
    
    reg [1:0] STATE , NextSTATE;

    parameter S0 = 2'b00;   //State S0 => Remainder = 0
    parameter S1 = 2'b01;   //State S1 => Remainder = 1
    parameter S2 = 2'b10;   //State S2 => Remainder = 2

    always @ (posedge clk , posedge RESET)
        if (RESET) STATE <= S0;
        else STATE <= NextSTATE; 
    always @(*)
        case(STATE)
            S0 : NextSTATE = S1;
            S1 : NextSTATE = S2;
            S2 : NextSTATE = S0;
            default : NextSTATE = S0;
        endcase 
    assign Q = (STATE == S0);
endmodule