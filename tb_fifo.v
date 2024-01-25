module tb_fifo();
  reg clk, rst_n, w_en, r_en;
  reg [7:0] data_in;
  wire [7:0] data_out;
  wire full, empty;
  fifo DUT(.clk(clk),.rst_n(rst_n),.w_en(w_en),.r_en(r_en),.data_in(data_in),.data_out(data_out),.full(full),.empty(empty));
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end
  initial begin
    rst_n = 0;
    w_en = 0;
    r_en = 0;
    data_in = 0;
    #20 rst_n = 1;
    #10 w_en = 1; data_in = 8'b00000001;
    #10 w_en = 1; data_in = 8'b00000010;
    #10 w_en = 1; data_in = 8'b00000100;
    #10 r_en = 1;
    #10;
    #10 r_en = 0;
    #10 w_en = 1; data_in = 8'b00001000;
    #10 w_en = 1; data_in = 8'b00010000;
    #10 r_en = 1;
    #10;
    #10 r_en = 0;
    #10 $finish;
  end
initial begin
      $dumpfile("fifo.vcd");
      $dumpvars;
  end
endmodule

