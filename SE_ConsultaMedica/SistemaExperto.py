from pyswip import Prolog

prolog = Prolog()
prolog.consult("Consulta.pl")

N = input("¿Nombre del paciente enfermo...?")
X = input("¿Sintoma que tiene...?")
T = input("¿Tipo de medicamento recomendable...?")
for valor in prolog.query("sintoma_de(" + X + ", Y)"):
    print(N, "esta enfermo de ", valor["Y"], "deberia tomar")
for valor in prolog.query("elimina(" + T + ", Y)"):
    print(T, "ya que elimina la", valor["Y"])

print("======================================================================")

print("========================Consulta de pacientes=========================")

CP = input("Nombre del paciente emfermo ")

for valor in prolog.query("enfermo_de(" + CP + ", Y)"):
    print(CP, "está enfermo de ", valor["Y"])



