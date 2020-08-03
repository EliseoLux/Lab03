module Tabla1_SOP();

reg A, B, C;
wire notA, notB, notC, uno1, dos2, tres3, cuatro4, cinco5, salida;

not a(notA, A);
not b(notB, B);
not c(notC, C);

and uno(uno1, notA, notB, notC);
and dos(dos2, notA, B, notC);
and tres(tres3, A, notB, notC);
and cuatro(cuatro4, A, notB, C);
and cinco(cinco5, A, B, C);

or ultima(salida, uno1, dos2, tres3, cuatro4, cinco5);

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
