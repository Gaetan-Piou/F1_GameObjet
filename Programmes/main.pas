program main;

uses crt,vector2D;
	

VAR
	u,v:vecteur2D;
	a:INTEGER;
	addvct,souvct,mulvct:vecteur2D;
	scalaire,vectoriel:INTEGER;

BEGIN
	ClrScr;
	writeln('Veuillez entrer le x de u, le premier vecteur');
	readln(u.x);
	writeln('Veuillez entrer le y de u, le premier vecteur');
	readln(u.y);
	writeln('Veuillez entrer le x de v, le second vecteur');
	readln(v.x);
	writeln('Veuillez entrer le y de v, le second vecteur');
	readln(v.y);
	writeln('Veuillez entrer un nombre entier a');
	readln(a);
	ClrScr;

	writeln('u : x=',u.x,' y=',u.y);
	writeln('v : x=',v.x,' y=',v.y);
	writeln('a=',a);
	readln();

	addvct:=addVect(u,v);
	souvct:=sousVect(u,v);
	mulvct:=multiVect(u,a);
	scalaire:=produitScalaire(u,v);
	vectoriel:=produitVectoriel(u,v);

	writeln('u+v = ',addvct.x,',',addvct.y);
	writeln('u-v = ',souvct.x,',',souvct.y);
	writeln('u*a = ',mulvct.x,',',mulvct.y);
	writeln('u.v = ',scalaire);
	writeln('u^v = ',vectoriel);
	readln();
END.

