module mux2(input wire D0, D1, S, output wire Y);

  assign Y = S ? D1 : D0;

endmodule

module mux4(input wire D0, D1, D2, D3, S0, S1, output wire Y);
  wire Y1, Y2;
  mux2 G0(D0, D1, S1, Y1);
  mux2 G1(D2, D3, S1, Y2);
  mux2 G2(Y1, Y2, S0, Y);

endmodule

module mux8(input wire D0, D1, D2, D3, D4, D5, D6, D7, S0, S1, S2, output wire Y);
  wire Y1, Y2;
  mux4  G0(D0, D1, D2, D3, S1, S2, Y1);
  mux4  G1(D4, D5, D6, D7, S1, S2, Y2);
  mux2  G2(Y1,Y2, S0, Y);

endmodule

// Tabla 1 mux 2:1
module mux2T1(input wire A, B, C, output wire Y);

  wire D1, D2;

  assign D1 = B ^ C;
  assign D2 = B ~^ C;
  mux2  G1(D1, D2, A, Y);

endmodule

// Tabla 1 mux 4:1
module mux4T1(input wire A, B, C, output wire Y);

  mux4  G0(C, ~C, ~C, C, A, B, Y);

endmodule

// Tabla 1 mux 8:1
module mux8T1(input wire A, B, C, output wire Y);
  wire D0, D1;

  assign D0 = 0;
  assign D1 = 1;
  mux8  G0(D0, D1, D1, D0, D1, D0, D0, D1, A, B, C, Y);

endmodule

// Tabla 2 mux 2:1
module mux2T2(input wire A, B, C, output wire Y);

  wire D1, D2;

  assign D1 = B ~| C;
  assign D2 = B ~& C;
  mux2  G1(D1, D2, A, Y);

endmodule

// Tabla 2 mux 4:1
module mux4T2(input wire A, B, C, output wire Y);
  wire D1, D2;

  assign D1 = 0;
  assign D2 = 1;
  mux4  U1(D2, D1, D2, ~C, A, B, Y);

endmodule

// Tabla 2 mux 8:1
module mux8T2(input wire A, B, C, output wire Y);
  wire D0, D1;

  assign D0 = 0;
  assign D1 = 1;
  mux8  U2(D1, D1, D0, D0, D1, D1, D1, D0, A, B, C, Y);

endmodule
