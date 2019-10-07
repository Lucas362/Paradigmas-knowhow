progenitor(pam,bob).
progenitor(tom,bob).
progenitor(tom,liz).
progenitor(bob,ann).
progenitor(bob,pat).
progenitor(pat,jim).

mulher(pam).
mulher(liz).
mulher(pat).
mulher(ann).
homem(tom).
homem(bob).
homem(jim).

diferente(X,Y):-X\==Y.

filho(Y,X):-progenitor(X,Y).
avos(X,Z):-progenitor(X,Y),progenitor(Y,Z).
mae(X,Y):-progenitor(X,Y),mulher(X).
irma(X,Y):-progenitor(Z,X),progenitor(Z,Y),mulher(X),diferente(X,Y).
tia(X,Y):-progenitor(Z,Y),irma(X,Z).

antepassado(X,Z):-progenitor(X,Z).
antepassado(X,Z):-progenitor(X,Y),antepassado(Y,Z).
