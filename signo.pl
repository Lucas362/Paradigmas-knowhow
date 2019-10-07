aniversario(maria,data(25,janeiro,1979)).
aniversario(joao,data(5,janeiro,1956)).
signo(Pessoa,aquario):-aniversario(Pessoa,data(Dia,janeiro,_)),Dia >= 20.
