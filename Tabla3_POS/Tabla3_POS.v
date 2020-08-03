module Tabla3_POS();

reg A, B, C, D;
wire notA, notB, notC, notD, uno1, dos2, tres3, cuatro4, cinco5, seis6, siete7, ocho8, nueve9, salida1, salida2, salida3, salida;

not a(notA, A);
not b(notB, B);
not c(notC, C);
not d(notD, D);

or uno(uno1, A, notB, C, D);
or dos(dos2, A, notB, C, notD);
or tres(tres3, A, notB, notC, D);
or cuatro(cuatro4, A, notB, notC, notD);
or cinco(cinco5, notA, B, C, notD);
or seis(seis6, notA, B, notC, notD);
or siete(siete7, notA, notB, C, D);
or ocho(ocho8, notA, notB, C, notD);
or nueve(nueve9, notA, notB, notC, notD);

and ultima1(salida1, uno1, dos2, tres3);
and ultima2(salida2, cuatro4, cinco5, seis6);
and ultima3(salida3, siete7, ocho8, nueve9);
and ultima(salida, salida1, salida2, salida3);

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
