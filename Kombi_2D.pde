//Projeto: Modelo Kombi Versão 2D completa
//Dupla: Genes e Milena

//Funcionalidades:
//Seta para Esquerda: Ativa a Seta Esquerda da Kombi;
//Seta para Direita: Ativa a Seta Direita da Kombi;
//Tecla R (ou r): Movimenta os dois retrovisores retráteis;
//Tecla L (ou l): Ativa o limpador de para-brisa;
//Tecla F (ou f): Aciona os faróis;
//Tecla M (ou m): Liga a Kombi;
//Apertando qualquer outra tecla aleatóriamente, as ações ou movimentos podem ser desfeitos.

void setup()
{
  size(800, 600);
}

color piscaEsquerdo = color(249, 165, 33);
color piscaDireito = color(249, 165, 33);
color farol = color(214, 222, 226);

int retrovisorDireito = 615;
int retrovisorEsquerdo = 185;
int i =2;

void draw()
{
  frameRate(7);
  background(204);
  
  //Lataria
  noStroke();
  fill(#5d5a56);
  rect(200, 235, 400, 230, 25, 25, 0, 0);

  fill(#ffff00);
  rect(200, 220, 400, 200, 25, 25, 0, 0);

  //Arcos Frente
  stroke(0.0);
  fill(#5d5a56);
  strokeWeight(12.0); 
  arc(200, 420, 380, 363, 4.712, TWO_PI);
  arc(600, 420, 380, 363, -PI, -1.571);

  //Pneu
  strokeWeight(2.0); 
  fill(#000000);
  rect(240, 450, 50, 70, 25, 25, 25, 25);
  rect(520, 450, 50, 70, 25, 25, 25, 25);

  //Parachoque
  strokeWeight(40.0); 
  noFill();
  arc(400, 440, 420, 50, 0, PI);

  strokeWeight(15.0); 
  stroke(#ffff00);
  arc(400, 438, 420, 50, 0, PI);

  stroke(#000000);
  strokeWeight(6.0); 
  line(230, 423, 570, 423);

  fill(#000000);
  rect(270, 425, 10, 60);
  rect(530, 425, 10, 60);

  //linhas frente
  strokeWeight(0.5); 
  line(230, 250, 230, 420); 
  line(570, 250, 570, 420); 

  //Setas
  LigarSetas();
  ellipse(250, 290, 30, 30);
  ellipse(550, 290, 30, 30);

  ellipse(280, 350, 55, 55);
  ellipse(520, 350, 55, 55);

  fill(piscaEsquerdo);    
  ellipse(250, 290, 25, 25);
  fill(piscaDireito); 
  ellipse(550, 290, 25, 25);

  //Faróis
  LigarFarois();
  fill(farol);
  ellipse(280, 350, 50, 50);
  ellipse(520, 350, 50, 50);

  //Placa
  fill(#a9a9a9);
  rect(355, 450, 90, 35);
  fill(#000000);
  textSize(13);
  text("BAT-KOMBI", 363, 473); 

  //Parte de cima
  strokeWeight(3); 
  fill(#ffff00);
  quad(225, 110, 210, 220, 590, 220, 575, 110);

  //Teto
  fill(#000000);
  arc(400, 110, 350, 50, -PI, 0);
  fill(#000000);
  arc(400, 110, 350, 10, 0, PI);

  //Para brisa
  fill(#ffffff);
  strokeWeight(2);
  quad(237, 125, 227, 207, 390, 207, 390, 125);
  quad(410, 125, 410, 207, 575, 207, 565, 125);

  //Limpador de Para brisa
  LimpadorParabrisa();
  strokeWeight(5);  
  line(366+i/20, 205-i/10, 286+i/PI, 207-i); 
  line(551+i/20, 205-i/10, 471+i/PI, 207 - i);

  strokeWeight(3);
  line(378, 219, 344+(i/5), 207-i/PI); 
  line(563, 219, 529+(i/5), 207-i/PI);

  //Linha divisora
  strokeWeight(6); 
  line(210, 220, 590, 220); 

  //Antena
  strokeWeight(1); 
  fill(#000000);
  rect(230, 230, 10, 15);
  strokeWeight(4);
  line(235, 80, 235, 230);

  //Retrovisor
  RetrovisorRetratil();
  line(200, 235, retrovisorEsquerdo, 195);
  ellipse(retrovisorEsquerdo, 195, 30, 30); 

  line(600, 235, retrovisorDireito, 195);
  ellipse(retrovisorDireito, 195, 30, 30);

  fill(#000000);
  rect(412, 135, 15, 11, 0, 3, 3, 0);
  rect(373, 135, 16, 11, 3, 0, 0, 3);

  //Logo
  fill(#ffff00);
  strokeWeight(9);
  ellipse(400, 275, 80, 80);
  strokeWeight(12);
  line(375, 245, 400, 275);
  line(400, 275, 420, 245);

  line(400, 279, 415, 300);
  line(415, 300, 435, 266);

  line(400, 278, 388, 301);
  line(386, 301, 362, 270);

  //Volante
  strokeWeight(10);
  noFill();
  arc(495, 203, 100, 20, -PI, 0);
  
  //saveFrame("Genes-Milena-#####.png");
}


//Funções auxiliares que dão movimento ao projeto
void LigarSetas(){
  if (keyCode ==LEFT || keyCode == RIGHT) {
    //Seta Esquerda
    if (keyCode ==  LEFT) {
      if (piscaEsquerdo == color(249, 165, 33)) {
        piscaEsquerdo = color(255, 102, 0);
      } else {
        piscaEsquerdo = color(249, 165, 33);
      }
    }
    //Seta Direita
    if (keyCode ==  RIGHT) {
      if (piscaDireito == color(249, 165, 33)) {
        piscaDireito = color(255, 102, 0);
      } else {
        piscaDireito = color(249, 165, 33);
      }
    }
  } else if(key!='l' && key!='L' && key!='r' && key!='R' && key!='f' && key!='F' && key!='m' && key!='M' && keyCode!=LEFT && keyCode!=RIGHT ) {
    piscaEsquerdo = color(249, 165, 33);
    piscaDireito = color(249, 165, 33);
  }
}

void LigarFarois(){
    if (key == 'f' || key == 'F') {
    farol = color(204, 255, 0);
  }else if(key!='l' && key!='L' && key!='r' && key!='R' && key!='f' && key!='F' && key!='m' && key!='M' && keyCode!=LEFT && keyCode!=RIGHT ) {
    farol = color(214, 222, 226);
  }
}

void RetrovisorRetratil(){
   if (key == 'r' || key == 'R') {
    if (retrovisorEsquerdo<210) {
      retrovisorEsquerdo++;
      retrovisorDireito--;
    }
  } else {
    if (retrovisorEsquerdo>185) {
      retrovisorEsquerdo--;
      retrovisorDireito++;
    }
  } 
}

void LimpadorParabrisa(){
    if (key == 'l' || key == 'L') {
    i=i+2;
    if (i==60) {
      key = 'h';
      i=0;
    }
  } else {
    i=2;
  }
}
