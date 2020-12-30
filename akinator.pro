PREDICATES
	nondeterm person(symbol, symbol, symbol, symbol, symbol, symbol)
	nondeterm check(symbol, symbol, symbol, symbol, symbol)
	nondeterm isEgyptian(symbol)
	nondeterm isAlive(symbol)
	nondeterm isOfficer(symbol)
	nondeterm isPresident(symbol)
	nondeterm isBlack(symbol)
	nondeterm checkE(symbol)
	nondeterm checkA(symbol)
	nondeterm checkO(symbol)
	nondeterm checkP(symbol)
	nondeterm checkB(symbol)
	nondeterm go
CLAUSES
	% List of persons facts up to 32 person == 2^5, based on 5 Yes / No questions
	% 	Name,	isEgyptian, isAlive, isOfficer, isPresident, isBlack
	person("Anwar Elsadat", yes, no, yes, yes, yes).
	person("another person", yes, yes, no, no, no).
	
	go:-	write("------------------------------------------------------------------------------"), nl,
		write("Welcome to AKINATOR simulation"), nl,
		write("Please think about one of the following famous characters"), nl,
		write("LIST OF CHARACTERS HERE!!"), nl,
		write("------------------------------------------------------------------------------"), nl,
		isEgyptian(E), isAlive(A), isOfficer(O), isPresident(P), isBlack(B), check(E, A, O, P, B).
		
	check(E, A, O, P, B):-person(N, E, A, O, P, B), write("Your charachter is: ", N), nl.
	check(_, _, _, _, _):-write("NO MATCHES FOUND!!"), nl.
	
	isEgyptian(E):-write("Is he Egyptian?"), nl, readln(E), nl, checkE(E).
	checkE(yes).
	checkE(no).
	checkE(_):-isEgyptian(_).
	
	isAlive(A):-write("Is he Alive?"), nl, readln(A), nl, checkA(A).
	checkA(yes).
	checkA(no).
	checkA(_):-isAlive(_).
	
	isOfficer(O):-write("Is he Officer?"), nl, readln(O), nl, checkO(O).
	checkO(yes).
	checkO(no).
	checkO(_):-isOfficer(_).
	
	isPresident(P):-write("Is he President?"), nl, readln(P), nl, checkP(P).
	checkP(yes).
	checkP(no).
	checkP(_):-isPresident(_).
	
	isBlack(B):-write("Is he Black?"), nl, readln(B), nl, checkB(B).
	checkB(yes).
	checkB(no).
	checkB(_):-isBlack(_).
GOAL
	go.