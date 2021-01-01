PREDICATES
	nondeterm person(symbol, symbol, symbol, symbol, symbol, symbol)
	nondeterm check(symbol, symbol, symbol, symbol, symbol)
	nondeterm isEgyptian(symbol)
	nondeterm isAlive(symbol)
	nondeterm isOfficer(symbol)
	nondeterm isPresident(symbol)
	nondeterm isBlack(symbol)
	nondeterm checkE(symbol, symbol)
	nondeterm checkA(symbol, symbol)
	nondeterm checkO(symbol, symbol)
	nondeterm checkP(symbol, symbol)
	nondeterm checkB(symbol, symbol)
	nondeterm go
CLAUSES
	% List of persons facts up to 32 person == 2^5, based on 5 (yes / no) questions
	%	Name,			isEgyptian, isAlive, isOfficer, isPresident, isBlack

	person("Anwar Elsadat",			yes, no , yes, yes, yes).
	person("Magdi Yacoub",			yes, yes, no , no , no).
	person("El-Sheikh Zayed",		yes, no , no , yes, no).
	person("Tom Hardy",			no , yes, no , no , no).
	person("Abd el Fattah el Sisi",		yes, yes, yes, yes, no).
	person("Barack Obama",			no , yes, no , yes, yes).
	person("Hosni Mubarak",			yes, no , yes, yes, no).
	person("Adolf Hitler",			no , no , yes, yes, no).
	person("Will Smith",			no , yes, no , no , yes).
	person("Bob Marly",			no , no , no , no , yes).
	person("Samia Gamal",			yes, no , no , no , no).
	person("Micael Jakson",			no , no , no , no , no).
	person("Abdelmenim ryed",		yes, no , yes, no , yes).
	person("Nelson Mandela",		no , no , no , yes, yes).
	person("Faruk Basha",			no , no , no , yes, no).
	person("Shikabala",			yes, yes, no , yes, no).
	person("Ahmed Mansy",			yes, no , yes, no , no).
	person("Ahmed Zaki",			yes, no , no , no , yes).
	person("Adly mansour",			yes, yes, no , yes, no).
	person("Bashar Al Assad",		no , yes, no , yes, no).
	person("Abiy ahmed Ali",		no , yes, no , yes, yes).
	person("Omar El-Bechir",		no , yes, yes, yes, yes).
	person("Mohamed Hussein Tantawi",	yes, yes, yes, yes, yes).
	person("Alexander Fraser",		no , no , yes, no , no).
	person("Mark Alexander Milley",		no , yes, yes, no , no).
	person("Abdel Rahman Swar al-Dahab",	no , no , yes, yes, yes).
	person("Sedki Sobhi",			yes, yes, yes, no , no).
	person("General Solly Shoke",		no , yes, yes, no , yes).
	
	go:-	write("------------------------------------------------------------------------------"), nl,
		write("Welcome to AKINATOR simulation"), nl,
		write("Please think about one of the given famous characters"), nl,
		write("------------------------------------------------------------------------------"), nl,
		isEgyptian(E), isAlive(A), isOfficer(O), isPresident(P), isBlack(B), check(E, A, O, P, B).
		
	check(E, A, O, P, B):-person(N, E, A, O, P, B), write("Your charachter is: ", N), nl.
	check(_, _, _, _, _):-write("NO MATCHES FOUND!!"), nl.
	
	isEgyptian(E):-write("Is he Egyptian?"), nl, readln(Input), nl, checkE(E, Input).
	checkE(yes, yes).
	checkE(no, no).
	checkE(E, _):-isEgyptian(E).
	
	isAlive(A):-write("Is he Alive?"), nl, readln(Input), nl, checkA(A, Input).
	checkA(yes, yes).
	checkA(no, no).
	checkA(A, _):-isAlive(A).
	
	isOfficer(C):-write("Is he Officer?"), nl, readln(Input), nl, checkO(C, Input).
	checkO(yes, yes).
	checkO(no, no).
	checkO(C, _):-isOfficer(C).
	
	isPresident(P):-write("Is he President?"), nl, readln(Input), nl, checkP(P, Input).
	checkP(yes, yes).
	checkP(no, no).
	checkP(P, _):-isPresident(P).
	
	isBlack(B):-write("Is he Black?"), nl, readln(Input), nl, checkB(B, Input).
	checkB(yes, yes).
	checkB(no, no).
	checkB(B, _):-isBlack(B).
GOAL
	go.
