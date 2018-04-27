//Hector Hurtado Ramirez
//Ya no desaparece mi segundo personaje, y añadí 2 personajes nuevos
//Quise cambiar las barras de vida por numeros impresos tipo rpg, pero creo que no lo logré muy bien.


import ddf.minim.*;

Minim minim;
Minim gestor;
AudioPlayer musica_fondo;



int pantalla;
int i;
int player1;
int player2;
int estado;
int atk1,atk2,hp1,hp2;
PImage img;
PImage Fondo;
PImage Fondo1;
int ganador;



void setup(){
  estado=1;
  pantalla= 1;
  i=0;
  player1=0;
  player2=0;
  ganador=0;
  size(1200,700);
  C1 = new Goro(10,30);
  C2= new Raiden(8,32);
  C3= new Scorpion(9,35);
  C4 = new SubZero(7,32);
  C5= new LiuKang(9,38);
  C6= new Ermac(10,39);
  
  gestor = new Minim(this);
  musica_fondo = gestor.loadFile("musicapelea.mp3");
  musica_fondo.setGain(-5);
  musica_fondo.loop();

 

  
 
}

void draw(){

inicio();

  
}
void inicio(){
  
 switch(pantalla)
 {
 case 1:
 Fondo= loadImage ("2.png");
  image (Fondo,0,0,1200,700);
  fill(random(255), random(5), random(255));
  textSize(100);
  textAlign(LEFT);
  text ("Progra Kombat", 260, 150 );
  textSize(50);
  text ("Para Salvar Tu Reino Presiona 0",225,500);
  keyPressed();
  if(key=='0'){
    pantalla+=1;
  }
  break;
  
  case 2:
  print(i);
 menuprincipal();
       keyPressed();
      if(key== 'a' || key=='b'||key=='c'||key=='d'||key=='e'||key=='f')
      {
  pantalla+=1;
  i++;
      }
    
  break;
  case 3:
 print(i);
    menuprincipal();
       keyPressed();
      if(key== 'u' || key=='v'||key=='w'||key=='x'||key=='y'||key=='z')
      {
  pantalla+=1;
  i++;
      }
  break;
  case 4:


  Fondo= loadImage ("h.png");
  image (Fondo,0,0,1200,700);
   print("jugadores",player1,player2);
  if((player1==1 && player2==2)||(player2==1 && player1==2))
  {

 
    text("Pelea Goro vs Raiden ",500,50);
    C1.Imprimir_Goro(100,350);
    C2.Imprimir_Raiden(800,350);
    
  }
  if((player1==1 && player2==3) || (player2==1 && player1==3))
  {
 
   text("Pelea Goro vs Scorpion ",500,50);
   C1.Imprimir_Goro(100,350);
   C3.Imprimir_Scorpion(800,350);
  }
  if((player1==1 && player2==4)|| (player2==1 && player2==4))
  {

   text("Pelea Goro vs SubZero ",500,50);
   C1.Imprimir_Goro(100,350);
   C4.Imprimir_SubZero(800,350);
  }
  if((player1==1 && player2==5)|| (player2==1 && player1==5))
  {

 text("Pelea Goro vs LiuKang ",500,50);
 C1.Imprimir_Goro(100,350);
 C5.Imprimir_LiuKang(800,350);
  } 
  if((player1==1 && player2==6)|| (player2==1 && player1==6))
  {

 text("Pelea Goro vs Ermac ",500,50);
 C1.Imprimir_Goro(100,350);
 C6.Imprimir_Ermac(800,350);
  }
  
   
  if((player1==2 && player2==3)|| (player2==2 && player1==3))
  {

 text("Pelea Raiden vs Scorpion ",600,50);
 C2.Imprimir_Raiden(100,350);
 C3.Imprimir_Scorpion(800,350);
  }
  if((player1==2 && player2==4)|| (player2==2 && player1==4))
  {

 text("Pelea Raiden vs Sub Zero ",600,50);
 C2.Imprimir_Raiden(100,350);
 C4.Imprimir_SubZero(800,350);
  }
  if((player1==2 && player2==5)|| (player2==2 && player1==5))
  {

 text("Pelea Raiden vs LiuKang ",600,50);
 C2.Imprimir_Raiden(100,350);
 C5.Imprimir_LiuKang(800,350);
    
  }
  if((player1==2 && player2==6)|| (player2==2 && player1==6))
  {

 text("Pelea Raiden vs Ermac ",600,50);
 C2.Imprimir_Raiden(100,350);
 C6.Imprimir_Ermac(800,350);
  }
  if((player1==3 && player2==4)|| (player2==3 && player1==4))
  {

 text("Pelea Scorpion vs SubZero ",600,50);
 C3.Imprimir_Scorpion(100,350);
 C4.Imprimir_SubZero(800,350);
  }
  if((player1==3 && player2==5)|| (player2==3 && player1==5))
  {

 text("Pelea Scorpion vs LiuKang ",600,50);
 C3.Imprimir_Scorpion(100,350);
 C5.Imprimir_LiuKang(800,350);
  }
  if((player1==3 && player2==6)|| (player2==3 && player1==6))
  {
 
 text("Pelea Scorpion vs Ermac ",600,50);
 C3.Imprimir_Scorpion(100,350);
 C6.Imprimir_Ermac(800,350);
  }
  if((player1==4 && player2==5)|| (player2==4 && player1==5))
  {

 text("Pelea SubZero vs LiuKang ",600,50);
 C4.Imprimir_SubZero(100,350);
 C5.Imprimir_LiuKang(800,350);
  }
  if((player1==4 && player2==6)||(player2==4 && player1==6))
  {
 
 text("Pelea SubZero vs Ermac ",600,50);
 C4.Imprimir_SubZero(100,350);
 C6.Imprimir_Ermac(800,350);
  } 
  if((player1==5 && player2==6)||(player2==5 && player1==6))
  {

 text("Pelea LiuKang vs Ermac ",600,50);
 C5.Imprimir_LiuKang (100,350);
 C6.Imprimir_Ermac(800,350);
  }
   if(player1<player2)estado=1;
   if(player1>player2)estado=2;
pantalla++;
  break;
  
   case 5:

   pelea();
   if((hp1<1) || (hp2<1))
   {
     

  Fondo1= loadImage ("Cotton2.jpg");
  image (Fondo1,0,0,1200,700);
     if(hp1<1)
     {
    fill(random(255),random(255), random(255));
   text("Wins",680,120);
   ganador=player2;
     }
     if(hp2<1)
     {
     fill(random(255),random(255), random(255));
     text("Wins ",680,120);
     ganador=player1;

     }
     if(ganador==1)
     {
       C1.Imprimir_Goro(750,200);
       text("Goro",600,120);
       text("Presione la tecla R para regresar al inicio...",580,550);
  keyPressed();
  if(key=='r' || key=='R')
  {
  estado=1;
  pantalla= 1;
  i=0;
  player1=0;
  player2=0;
  ganador=0;
  
  }
     }
     else if(ganador==2)
     {
       C2.Imprimir_Raiden(450,200);
        text("Raiden",600,120);
        text("Presione la tecla R para regresar al inicio...",580,550);
  keyPressed();
  if(key=='r' || key=='R')
  {
  estado=1;
  pantalla= 1;
  i=0;
  player1=0;
  player2=0;
  ganador=0;
  
  }
     }
     else if(ganador==3)
     {
       C3.Imprimir_Scorpion(450,200);
        text("Scorpion",600,120);
        text("Presione la tecla R para regresar al inicio...",580,550);
  keyPressed();
  if(key=='r' || key=='R')
  {
  estado=1;
  pantalla= 1;
  i=0;
  player1=0;
  player2=0;
  ganador=0;
  
  }
     }
     else if(ganador==4)
     {
       C4.Imprimir_SubZero(450,200);
        text("SubZero",600,120);
        text("Presione la tecla R para regresar al inicio...",580,550);
  keyPressed();
  if(key=='r' || key=='R')
  {
  estado=1;
  pantalla= 1;
  i=0;
  player1=0;
  player2=0;
  ganador=0;
  
  }
     }
     else if(ganador==5)
     {
       C5.Imprimir_LiuKang(450,200);
        text("LiuKang",600,120);
        text("Presione la tecla R para regresar al inicio...",580,550);
  keyPressed();
  if(key=='r' || key=='R')
  {
  estado=1;
  pantalla= 1;
  i=0;
  player1=0;
  player2=0;
  ganador=0;
  
  }
     }
     else if(ganador==6)
     {
       C6.Imprimir_Ermac(450,200);
        text("Ermac",600,120);
        text("Presione la tecla R para regresar al inicio...",580,550);
  keyPressed();
  if(key=='r' || key=='R')
  {
  estado=1;
  pantalla= 1;
  i=0;
  player1=0;
  player2=0;
  ganador=0;
  
  }
     }


}
  
   
   print(hp1,hp2);
   
  break;

  }

 
  
}

void menuprincipal(){
  
  Fondo= loadImage ("Cotton2.jpg");
  image (Fondo,0,0,1200,700);
 

    
    C1.Imprimir_Goro(75,100);
  fill(255);
  textSize(20);
  text ("Goro",160,100);
  text ("J1(a)",55,340);
  text ("J2(u)", 55,360);
  text ("Pow=10 Hp=50", 105, 350);
  C2.Imprimir_Raiden(450,100);
  textSize(20);
  text ("Raiden",500,100);
  text ("J1(b)",450,340);
  text ("J2(v)", 450,360);
  text ("Pow=9 Hp=50",500,350);
  C3.Imprimir_Scorpion(825,100);
  textSize(20);
  text ("Scorpion",850,100);
  text ("J1(c)",800,340);
  text ("J2(w)", 800,360);
  text ("Pow=8 Hp=50",850,350);
  C4.Imprimir_SubZero(75,400);
  textSize(20);
  text ("Sub Zero",160,400);
  text ("J1(d)",55,640);
  text ("J2(x)", 55,660);
  text ("Pow=8 Hp=50",105, 650);
  C5.Imprimir_LiuKang(450,400); 
  textSize(20);
  text ("Liu Kang",500,400);
  text ("J1(e)",450,640);
  text ("J2(y)", 450,660);
  text ("Pow=7 Hp=50",500,650);
  C6.Imprimir_Ermac(825,400);
  text ("Ermac",850,400);
  textSize(20);
  text ("J1(f)",800,640);
  text ("J2(z)", 800,660);
  text ("Pow=7 Hp=50",850, 650);
  if(i==0){
  text("Jugador 1= ",75,50);
  text("Selecciona Tu Guerrero! ",500,50);
keyPressed();
  if((key=='a')||(key=='A'))
  {
   atk1=C1.atk;
   hp1=C1.Hp;
    player1=1;
  }
  else if((key=='b')||(key=='B'))
  {
   atk1=C2.atk;
   hp1=C2.Hp;
    player1=2;
  }
  else if((key=='c')||(key=='C'))
  {
   atk1=C3.atk;
   hp1=C3.Hp;
    player1=3;
  }
  else if((key=='d')||(key=='D'))
  {
   atk1=C4.atk;
   hp1=C4.Hp;
    player1=4;
   }
  else if((key=='e')||(key=='E'))
  {
   atk1=C5.atk;
   hp1=C5.Hp;
    player1=5;
  }
  else if((key=='f')||(key=='F'))
  {
   atk1=C6.atk;
   hp1=C6.Hp;
    player1=6;
  } 

  }
  
  else
  {
  text("Jugador 2= ",75,50);
    text("Selecciona Tu Guerrero!",500,50);
  keyPressed();
  if((key=='u')||(key=='U')){
    atk2=C1.atk;
    hp2=C1.Hp;
    player2=1;
  }
  else if((key=='v')||(key=='V'))
  {
    atk2=C2.atk;
    hp2=C2.Hp;
    player2=2;
  }
  else if((key=='w')||(key=='W'))
  {
    atk2=C3.atk;
    hp2=C3.Hp;
    player2=3;
  }
  else if((key=='x')||(key=='X'))
  {
    atk2=C4.atk;
    hp2=C4.Hp;
    player2=4;
  }
  else if((key=='y')||(key=='Y'))
  { 
    atk2=C5.atk;
    hp2=C5.Hp;
    player2=5;
  }
  else if((key=='z')||(key=='Z'))
  {
    atk2=C6.atk;
    hp2=C6.Hp;
    player2=6;
    
  } 

  }

 
}
void pelea(){
 keyCode=0;
 
 if (estado==1){

 
 textAlign(CENTER); 
 fill(#FFB6C1);
 textSize(35);
 text("Jugador", 2*width/7, 11*height/12);
 fill(#FFB6C1);
 textSize(20);
 text("Presiona la tecla A para atacar", 2*width/7, 6*height/7); 
 if(keyPressed && (key=='A'||key=='a') && hp2>0){
 keyCode=0;
 if(hp2>0)
 {
 hp2-=atk1;
 estado=2;
 }
 if(hp2<=0){
 estado=3;
 }
 } 
 }//if turno1
 
 
 if(estado==2){
 
 textAlign(CENTER);
 fill(#FFB6C1);
 textSize(35);
 text("Jugador ", 5*width/7, 11*height/12);
 textSize(20);
 fill(#FFB6C1);
 text("Presiona D para atacar", 5*width/7, 6*height/7); 
 
 if(keyPressed && (key=='d'||key=='D' )) {
 keyCode=0;
 if(hp1>0){
 hp1-=atk2;
 estado=1;
 }
 if(hp1<=0){
 estado=3;
 } 
 }
 
 if (estado==3)
 {
 pantalla++;
 }
 }


}