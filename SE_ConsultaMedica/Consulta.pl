/*Diagnóstico de enfermedades*/

enfermo_de(manuel,gripe).
enfermo_de(luis,anemia).
enfermo_de(alejandro,gripe).
enfermo_de(cano,gripe).

tiene_sintoma(manuel,fiebre).
tiene_sintoma(luis,cansancio).
tiene_sintoma(alejandro,tos).
tiene_sintoma(cano,fiebre).

sintoma_de(fiebre,gripe).
sintoma_de(tos,gripe).
sintoma_de(cansancio,anemia).
sintoma_de(nose,error_de_dato).

elimina(vitaminas,cansancio).
elimina(aspirinas,fiebre).
elimina(jarabe,tos).

recetar_a(X,Y):-enfermo_de_(Y,A),alivia(X,A).
alivia(X,Y):-elimina(X,A),sintoma_de(A,Y).

enfermo_de_(X,Y):-tiene_sintoma(X,Z),sintoma_de(Z,Y).
