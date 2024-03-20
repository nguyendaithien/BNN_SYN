module counter (input clk,
                input rst_n,
                output reg[3:0] out);
  always @ (posedge clk or negedge rst_n)
  begin
    if (!rst_n)
      out <= 0;
    else
      out <= out + 1;
  end
endmodule
