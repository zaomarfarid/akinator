PREDICATES
	person(symbol, symbol, symbol, symbol, symbol, symbol)
	%search(symbol, symbol, symbol, symbol, symbol, symbol)
	isEgyptian(symbol, symbol)
	isAlive(symbol, symbol)
	isOfficer(symbol, symbol)
	isPresident(symbol, symbol)
	isBlack(symbol, symbol)
	checkE(symbol).
	checkA(symbol).
	checkO(symbol).
	checkP(symbol).
	checkB(symbol).
	go.
CLAUSES
	%person(Name, isEgyptian, isAlive, isOfficer, isPresident, isBlack)
	person("Anwar Elsadat", yes, no, no, no, yes).
	person("another person", yes, yes, no, no, no).

	%go:-search(N, E, A, O, P, B).
	%search(N, E, A, O, P, B):-person(N, _, _, _, _, _), isEgyptian(E, Ans), isAlive(A, Ans), isOfficer(O, Ans), isPresident(P, Ans), isBlack(B, Ans).
	%go:-person(N, _, _, _, _, _), isEgyptian(E, Ans), isAlive(A, Ans), isOfficer(O, Ans), isPresident(P, Ans), isBlack(B, Ans), write("Your charachter is:", N).
	go:-isEgyptian(E), isAlive(A), isOfficer(O), isPresident(P), isBlack(B), person(N, E, A, O, P, B), write("Your charachter is:", N).
	
	isEgyptian(E, Ans):-write("Is he Egyptian?"), nl, readln(Ans), nl, checkE(Ans).
	checkE(yes).
	checkE(no).
	checkE(_):-isEgyptian(E, Ans).
	
	isAlive(A, Ans):-write("Is he Alive?"), nl, readln(Ans), nl, checkA(Ans).
	checkA(yes).
	checkA(no).
	checkA(_):-isAlive(A, Ans).
	
	isOfficer(O, Ans):-write("Is he Officer?"), nl, readln(Ans), nl, checkO(Ans).
	checkO(yes).
	checkO(no).
	checkO(_):-isOfficer(O, Ans).
	
	isPresident(P, Ans):-write("Is he President?"), nl, readln(Ans), nl, checkP(Ans).
	checkP(yes).
	checkP(no).
	checkP(_):-isPresident(P, Ans).
	
	isBlack(B, Ans):-write("Is he Black?"), nl, readln(Ans), nl, checkB(Ans).
	checkB(yes).
	checkB(no).
	checkB(_):-isBlack(B, Ans).
GOAL
	go.