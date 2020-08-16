module testbench();

  reg p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, p15, p16, p17, p18;
  wire out1, out2, out3, out4, out5, out6;

  mux2T1  G0(p1, p2, p3, out1);
  mux4T1  G1(p4, p5, p6, out2);
  mux8T1  G2(p7, p8, p9, out3);
  mux2T2  G3(p10, p11, p12, out4);
  mux4T2  G4(p13, p14, p15, out5);
  mux8T2  G5(p16, p17, p18, out6);


  initial begin
    $display(" Tabla 1 - Mux 2:1");
    $display("A B C | Y");
    $display("------|---");
    $monitor("%b %b %b | %b ", p1, p2, p3, out1);
    p1 = 0; p2 = 0; p3 = 0;
    #1 p3 = 1;
    #1 p2 = 1; p3 = 0;
    #1 p3 = 1;
    #1 p1 = 1; p2 = 0; p3 = 0;
    #1 p3 = 1;
    #1 p2 = 1; p3 = 0;
    #1 p3 = 1;
  end

  initial begin
    #9
    $display("\n");
    $display(" Tabla 1 - Mux 4:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", p4, p5, p6, out2);
       p4 = 0; p5 = 0; p6 = 0;
    #1 p6 = 1;
    #1 p5 = 1; p6 = 0;
    #1 p6 = 1;
    #1 p4 = 1; p5 = 0; p6 = 0;
    #1 p6 = 1;
    #1 p5 = 1; p6 = 0;
    #1 p6 = 1;
  end

  initial begin
    #18
    $display("\n");
    $display(" Tabla 1 - Mux 8:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", p7, p8, p9, out3);
       p7 = 0; p8 = 0; p9 = 0;
    #1 p9 = 1;
    #1 p8 = 1; p9 = 0;
    #1 p9 = 1;
    #1 p7 = 1; p8 = 0; p9 = 0;
    #1 p9 = 1;
    #1 p8 = 1; p9 = 0;
    #1 p9 = 1;
  end

  initial begin
    #27
    $display("\n");
    $display(" Tabla 2 - Mux 2:1");
    $display("A B C | Y");
    $display("------|---");
    $monitor("%b %b %b | %b ", p10, p11, p12, out4);
    p10 = 0; p11 = 0; p12 = 0;
    #1 p12 = 1;
    #1 p11 = 1; p12 = 0;
    #1 p12 = 1;
    #1 p10 = 1; p11 = 0; p12 = 0;
    #1 p12 = 1;
    #1 p11 = 1; p12 = 0;
    #1 p12 = 1;
  end

  initial begin
    #36
    $display("\n");
    $display(" Tabla 2 - Mux 4:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", p13, p14, p15, out5);
       p13 = 0; p14 = 0; p15 = 0;
    #1 p15 = 1;
    #1 p14 = 1; p15 = 0;
    #1 p15 = 1;
    #1 p13 = 1; p14 = 0; p15 = 0;
    #1 p15 = 1;
    #1 p14 = 1; p15 = 0;
    #1 p15 = 1;
  end

  initial begin
    #45
    $display("\n");
    $display(" Tabla 2 - Mux 8:1");
    $display("A B C | Y");
    $display("------|--");
    $monitor("%b %b %b | %b", p16, p17, p18, out6);
       p16 = 0; p17 = 0; p18 = 0;
    #1 p18 = 1;
    #1 p17 = 1; p18 = 0;
    #1 p18 = 1;
    #1 p16 = 1; p17 = 0; p18 = 0;
    #1 p18 = 1;
    #1 p17 = 1; p18 = 0;
    #1 p18 = 1;
  end

  initial
    #55 $finish;

  initial begin
    $dumpfile("testbench_tb.vcd");
    $dumpvars(0, testbench);
  end

endmodule
