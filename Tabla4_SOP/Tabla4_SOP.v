module Tabla4_SOP();

reg A, B, C, D;


not a(notA, A);
not b(notB, B);
not c(notC, C);
not d(notD, D);

and uno(uno1, notA, notB, notC, notD);
and dos(dos2, notA, notB, C, notD);
and tres(tres3, notA, notB, C, D);
and cuatro(cuatro4, notA, B, C, notD);
and cinco(cinco5, notA, B, C, D);
and seis(seis6, A, notB, notC, notD);
and siete(siete7, A, notB, C, notD);

or ultima(salida, uno1, dos2, tres3, cuatro4, cinco5, seis6, siete7);

initial begin

$display("| A B C D | Y |");
$display("|---------|---|");
$monitor("| %b %b %b %b | %b |", A, B, C, D, salida);
A = 0; B = 0; C = 0; D = 0;
#1 D = 1;
#1 C = 1; D = 0;
#1 D = 1;
#1 B = 1; C = 0; D = 0;
#1 D = 1;
#1 C = 1; D = 0;
#1 D = 1;
#1 A = 1; B = 0; C = 0; D = 0;
#1 D = 1;
#1 C = 1; D = 0;
#1 D = 1;
#1 B = 1; C = 0; D = 0;
#1 D = 1;
#1 C = 1; D = 0;
#1 D = 1;

end

endmodule
