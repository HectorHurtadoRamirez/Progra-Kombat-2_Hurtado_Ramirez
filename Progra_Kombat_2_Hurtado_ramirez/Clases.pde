class Goro {
  int atk;
  int Hp;
 Goro(int ataque,int hp){
atk=ataque;
Hp=hp;
}
void Imprimir_Goro(int lugarx,int lugary){
img = loadImage("goro.png");
img.resize(150,220);
image(img,100,lugary);

}

}

class Raiden{
   int atk;
   int Hp;
Raiden(int ataque,int hp){
atk=ataque;
Hp=hp;
}
void Imprimir_Raiden(int lugarx,int lugary){
img = loadImage("personaje2.png");
img.resize(200,220);
image(img,lugarx,lugary);
}

}

class Scorpion{
  int atk;
  int Hp;
  Scorpion(int ataque,int hp){
atk=ataque;
Hp=hp;
}
void Imprimir_Scorpion(int lugarx,int lugary){
img = loadImage("personaje3.png");
img.resize(300,270);
image (img,800,50);
}

}

class SubZero{
   int atk;
   int Hp;
  SubZero(int ataque,int hp){
atk=ataque;
Hp=hp;
}
void Imprimir_SubZero(int lugarx,int lugary){
img = loadImage("personaje4.png");
img.resize(250,270);
image(img,lugarx,350);
}

}
class LiuKang{
   int atk;
   int Hp;
  LiuKang(int ataque,int hp){
atk=ataque;
Hp=hp;
}
void Imprimir_LiuKang(int lugarx,int lugary){
img = loadImage("personaje5.png");
img.resize(150,200);
image(img,lugarx,420);
}
}
class Ermac{
   int atk;
   int Hp;
  Ermac(int ataque,int hp){
atk=ataque;
Hp=hp;
}
void Imprimir_Ermac(int lugarx,int lugary){
img = loadImage("personaje6.png");
img.resize(250,270);
image(img,750,350);
}
}
Goro C1;
Raiden C2;
Scorpion C3;
SubZero C4;
LiuKang C5;
Ermac C6;