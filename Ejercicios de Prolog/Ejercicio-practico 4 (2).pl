predicado(A,B):-X is (A+B)/2,write('Promedio es: '),
write(X),nl,Y is sqrt(A*B),
write('La raiz cuadrada del producto es: '),write(Y),nl,
Z is max(X,Y),write('El mayor de (a) y (b) es: '),write(Z),nl.

