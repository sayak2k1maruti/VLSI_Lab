# Verilog Using qFlow tools

## A Simple Half_Adder Ckt code in Verilog

> Half_Adder.v

```verilog
module Half_Adder(Sum,Carry,X,Y);
    //declaration
    input X,Y;
    output Sum,Carry;
    //Instantiation
    xor G1(Sum,X,Y);
    and G2(Carry,X,Y);
endmodule
```

> Half_Adder_Test.v

```verilog
`timescale 1ns/1ns
module Half_Adder_Test();
    reg X,Y;
    wire Sum,Carry;
    Half_Adder HF (Sum,Carry,X,Y);
    initial begin
        $dumpfile("output.vcd");
        $dumpvars(0,Half_Adder_Test);
        $monitor("%d %d -> %d %d",X,Y,Carry,Sum);
        #0 X = 0; Y = 0;
        #2 X = 0; Y = 0;
        #2 X = 0; Y = 1;
        #2 X = 1; Y = 0;
        #2 X = 1; Y = 1;
        #5 $finish;
    end
endmodule
```

## Compiling and Testing and Dumping Test Results

```bash
$ iverilog -o Half_Adder Half_Adder.v Half_Adder_test.v
$ vvp Half_Adder

VCD info: dumpfile output.vcd opened for output.
0 0 -> 0 0
0 1 -> 0 1
1 0 -> 0 1
1 1 -> 1 0
```

## Simulating Output using GTKWave Tool

```bash
$ ls
Half_Adder  Half_Adder_test.v  Half_Adder.v  output.vcd
$ gtkwave output.vcd &
```

![Screenshot from 2022-01-27 08-17-04.png]("https://raw.githubusercontent.com/sayak2k1maruti/VLSI_Lab/main/screenshots/Screenshot%20from%202022-01-27%2008-17-04.png?token=GHSAT0AAAAAABP5S6VTSCNVLMIAW3WQD3AGYPSZVNA")
