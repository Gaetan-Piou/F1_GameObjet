unit vector2D;


interface

uses SDL2, SDL2_Image;

type vecteur2D = record
	x:INTEGER;
	y:INTEGER;
END;


procedure setVectX(var V:vecteur2D; P:INTEGER);
procedure setVectY(var V:vecteur2D; P:INTEGER);
function getVectX(V:vecteur2D):INTEGER;
function getVectY(V:vecteur2D):INTEGER;

function addVect(V1,V2:vecteur2D):vecteur2D;
function sousVect(V1,V2:vecteur2D):vecteur2D;
function multiVect(V1:vecteur2D;Scal:INTEGER):vecteur2D;
function produitScalaire(V1,V2:vecteur2D):INTEGER;
function produitVectoriel(V1,V2:vecteur2D):INTEGER;

implementation


//Mutateurs
procedure setVectX(var V:vecteur2D; P:INTEGER);
BEGIN
	V.x:=P;
END;

procedure setVectY(var V:vecteur2D; P:INTEGER);
BEGIN
	V.y:=P;
END;

//Acesseurs
function getVectX(V:vecteur2D):INTEGER;
BEGIN
	getVectX:=V.x;
END;

function getVectY(V:vecteur2D):INTEGER;
BEGIN
	getVectY:=V.y;
END;




function addVect(V1,V2:vecteur2D):vecteur2D;
VAR
	VA:vecteur2D;

BEGIN
	VA.x := V1.x + V2.x;
	VA.y := V1.y + V2.y;
	addVect:=VA;
END;


function sousVect(V1,V2:vecteur2D):vecteur2D;
VAR
	VS:vecteur2D;

BEGIN
	VS.x := V1.x - V2.x;
	VS.y := V1.y - V2.y;
	sousVect:=VS;
END;


function multiVect(V1:vecteur2D;Scal:INTEGER):vecteur2D;
VAR
	VM:vecteur2D;

BEGIN
	VM.x := V1.x * Scal;
	VM.y := V1.y * Scal;
	multiVect:=VM;
END;	


function produitScalaire(V1,V2:vecteur2D):INTEGER;
BEGIN
	produitScalaire := (V1.x * V2.x) + (V1.y * V2.y);
END;


function produitVectoriel(V1,V2:vecteur2D):INTEGER;
BEGIN
	produitVectoriel := (V1.x - V2.x) * (V1.y - V2.y);
END;
	
END.