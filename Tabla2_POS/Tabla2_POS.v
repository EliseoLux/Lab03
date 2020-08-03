module Tabla2_POS();

reg A, B, C;
wire notA, notB, notC;

not a(notA, A);
not b(notB, B);
not c(notC, C);

or uno(uno1, A, B, C);
or dos(dos2, A, notB, C);
or tres(tres3, A, notB, notC);
or cuatro(cuatro4, notA, B, C);
or cinco(cinco5, notA, B, notC);

and ultima(salida, uno1, dos2, tres3, cuatro4, cinco5);

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
