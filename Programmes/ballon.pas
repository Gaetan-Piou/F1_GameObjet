unit ballon;

interface

uses SDL2, SDL2_Image, actor;

type ball = record
	obj:gameobjet;
	coul:INTEGER;
	velocite:INTEGER;
END;

procedure setBallObjet(var balle:ball; objet:gameobjet);
procedure setBallCouleur(var balle:ball; couleur:INTEGER);
procedure setBallVelocite(var balle:ball; velo: INTEGER);
function getBallObjet(balle:ball):gameobjet;
function getBallCouleur(balle:ball):INTEGER;
function getBallVelocite(balle:ball):INTEGER;

implementation

procedure setBallObjet(var balle:ball; objet:gameobjet);
BEGIN
	balle.obj:=objet;
END;

procedure setBallCouleur(var balle:ball; couleur:INTEGER);
BEGIN
	balle.coul:=couleur;
END;

procedure setBallVelocite(var balle:ball; velo: INTEGER);
BEGIN
	balle.velocite:=velo;
END;

function getBallObjet(balle:ball):gameobjet;
BEGIN
	getBallObjet:=balle.obj;
END;

function getBallCouleur(balle:ball):INTEGER;
BEGIN
	getBallCouleur:=balle.coul;
END;

function getBallVelocite(balle:ball):INTEGER;
BEGIN
	getBallVelocite:=balle.velocite;
END;

	
END.