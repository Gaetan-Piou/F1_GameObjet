unit actor;


interface

uses SDL2, SDL2_Image, vector2D;

type gameobjet = record
	texture: integer;
	position: vecteur2D;
END;

procedure setObjTexture(var objet:gameobjet; tex:integer);
procedure setObjPosition(var objet:gameobjet; V:vecteur2D);
function getObjTexture(objet:gameobjet):INTEGER;
function getObjPosition(objet:gameobjet):vecteur2D;

implementation

procedure setObjTexture(var objet:gameobjet; tex:integer);
BEGIN
	objet.texture:=tex;
END;

procedure setObjPosition(var objet:gameobjet; V:vecteur2D);
BEGIN
	objet.position.x:=v.x;
	objet.position.y:=v.y;
END;

function getObjTexture(objet:gameobjet):INTEGER;
BEGIN
	getObjTexture:=objet.texture;
END;

function getObjPosition(objet:gameobjet):vecteur2D;
BEGIN
	getObjPosition:=objet.position;
END;

END.