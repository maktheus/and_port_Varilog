module andport_tb;

  // Definir os sinais de entrada
  reg a;
  reg b;
  
  // Definir o sinal de saída
  wire out;
  
  // Instanciar o módulo que estamos testando
  andport dut (.a(a), .b(b), .out(out));
  
  // Estimular o circuito com várias entradas
  initial begin
    a = 0;
    b = 0;
    #10;
    a = 0;
    b = 1;
    #10;
    a = 1;
    b = 0;
    #10;
    a = 1;
    b = 1;
    #10;
    $finish;
  end
  
  // Exibir a saída
  always @(out) begin
    $display("Output = %b", out);
  end
  
endmodule
