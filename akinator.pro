PREDICATES
	nondeterm person(symbol, symbol, symbol, symbol, symbol, symbol, symbol, symbol)
	nondeterm check(symbol, symbol, symbol, symbol, symbol, symbol, symbol)
	nondeterm isEgyptian(symbol)
	nondeterm isAlive(symbol)
	nondeterm isOfficer(symbol)
	nondeterm isPresident(symbol)
	nondeterm isBlack(symbol)
        nondeterm isplaYer(symbol)
        nondeterm isactoR(symbol)
	nondeterm checkE(symbol, symbol)
	nondeterm checkA(symbol, symbol)
	nondeterm checkO(symbol, symbol)
	nondeterm checkP(symbol, symbol)
	nondeterm checkB(symbol, symbol)
	nondeterm checkY(symbol, symbol)
	nondeterm checkR(symbol, symbol)
	nondeterm go
CLAUSES
	% List of facts up to 128 persons == 2^7, based on 7 Yes / No questions
	% 	Name, isEgyptian, isAlive, isOfficer, isPresident, isBlack, isplaYer, isactoR
	person("Anwar Elsadat", yes, no, yes, yes, yes, no, no).
	person("Magdi Yacoub", yes, yes, no, no, no, no, no).
	person("El-Sheikh Zayed", yes, no, no, yes, no, no, no).
	person("Tom Hardy", no, yes, no, no, no, no, yes).
	person("Abd el Fattah el Sisi", yes, yes, yes, yes, no, no, no).
	person("Barack Obama", no, yes, no, yes, yes, no, no).
	person("Hosni Mubarak", yes, no, yes, yes, no, no, no).
	person("Adolf Hitler", no, no, yes, yes, no, no, no).
	person("Will Smith", no, yes, no, no, yes, no, yes).
	person("Bob Marly", no, no, no, no, yes, no, no).
	person("Samia Gamal", yes, no, no, no, no, no, yes).
	person("Micael Jakson", no, no, no, no, no, no, no).
	person("Abdelmenim ryed", yes, no, yes, no, yes, no, no).
	person("Nelson Mandela", no, no, no, yes, yes, no, no).
	person("Faruk Basha", no, no, no, yes, no, no, no).
	person("Shikabala", yes, yes, no, no, yes, yes, no).
	person("Ahmed Mansy", yes, no, yes, no, no, no, no).
	person("Ahmed Zaki", yes, no, no, no, yes, no, yes).
	person("Adly mansour", yes, yes, no, yes, no, no, no).
	person("Bashar Al Assad", no, yes, no, yes, no, no, no).
	person("Abiy ahmed Ali", no, yes, no, yes, yes, no, no).
	person("Omar El-Bechir", no, yes, yes, yes, yes, no, no).
	person("Mohamed Hussein Tantawi", yes, yes, yes, yes, yes, no, no).
	person("Alexander Fraser", no, no, yes, no, no, no, no).
	person("Mark Alexander Milley", no, yes, yes, no, no, no, no).
	person("Abdel Rahman Swar al-Dahab", no, no, yes, yes, yes, no, no).
	person("Sedki Sobhi", yes, yes, yes, no, no, no, no).
	person("General Solly Shoke", no, yes, yes, no, yes, no, no).
	person("Mohamed Salah", yes, yes, no, no, no, yes, no).
	person("Cristiano Ronaldo", no, yes, no, no, no, yes, no).
	person("Hamada Emam", yes, no, no, no, no, yes, no).
	person("Ibrahim Youssef", yes, no,yes, no, yes, yes, no).
	person("Medhat Shalaby", yes, yes, yes, no, no, yes, no).
	person("Ekramy", yes, yes, no, no, no, yes, yes).
	person("The Rock", no, yes, no, no, yes, yes, yes).
	person("Emmanuel Macron", no, yes, no, yes, no, yes, no).
	person("George Weah", no, yes, no, yes, yes, yes, no).
	person("Pel�", no, yes, no, no, yes, yes, no).
	person("Donald Trump", no, yes, no, yes, no, no, yes).
	person("David Beckham", no, yes, no, no, no, yes, yes).
        person("Paolo Maldini", no, yes, yes, no, no, yes, no).
        person("Mohamed Ramadan", yes, yes, no, no, yes, no, yes).
        person("Mohamed Ali Clay", no, no, no, no, yes, yes, no).
	person("Chadwick Boseman(Black Panther)", no, no, no, no, yes, no, yes).
	person("Paul Walker", no, no, no, no, no, no, yes).
	person("Bruce Lee", no, no, no, no, no, yes, yes).
        person("Adel Emam", yes, yes, no, no, no, no, yes).
	
	go:-	write("------------------------------------------------------------------"), nl,
		write("Welcome to AKINATOR simulation"), nl,
		write("Please think about one of the given famous characters in the sheet"), nl,
		write("Answer only with yes/no otherwise, you'll be prompted again"), nl,
		write("------------------------------------------------------------------"), nl,
		isEgyptian(E), isAlive(A), isOfficer(O), isPresident(P), isBlack(B), isPlaYer(Y), isactoR(R), check(E, A, O, P, B, Y, R).
		
	check(E, A, O, P, B, Y, R):-person(N, E, A, O, P, B, Y, R), write("Your charachter is: ", N), nl.
	check(_, _, _, _, _,_, _):-write("NO MATCHES FOUND!!"), nl.
	
	
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
	
	isplaYer(Y):-write("Is he Player?"), nl, readln(Input), nl, checkY(Y, Input).
	checkY(yes, yes).
	checkY(no, no).
	checkY(Y, _):-isplaYer(Y).
	
	isactoR(R):-write("Is he Actor?"), nl, readln(Input), nl, checkR(R, Input).
	checkR(yes, yes).
	checkR(no, no).
	checkR(R, _):-isactoR(R).
GOAL
	go.