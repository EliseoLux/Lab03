module Tabla1_SOP();

reg A, B, C;
wire notA, notB, notC, uno1, dos2, tres3, salida;

not a(notA, A);
not b(notB, B);
not c(notC, C);

or uno(uno1, A, B, notC);
or dos(dos2, A, notB, notC);
or tres(tres3, notA, notB, C);

and ultima(salida, uno1, dos2, tres3);

initial begin

$display("| A B C | Y |");
$display("|-------|---|");
$monitor("| %b %b %b | %b |", A, B, C, salida);
A = 0; B = 0; C = 0;
#1 C = 1;
#1 B = 1; C = 0;
#1 C = 1;
#1 A = 1; B = 0; C = 0;
#1 C = 1;
#1 B = 1; C = 0;
#1 C = 1;

end

endmodule
