int Spielfeldbreite = 800;
int Spielfeldhohe = 800;
int offsetX = 10;
int offsetY = 10;

void setup(){
  //size(Spielfeldbreite,Spielfeldhohe);
  size(800,800);
}

void draw(){
  //Zwei waagrechte Linien
  line(offsetX,Spielfeldhohe/3,Spielfeldbreite,Spielfeldhohe/3);
  line(offsetX,Spielfeldhohe*2/3,Spielfeldbreite,Spielfeldhohe*2/3);
  
  // Zwei senkrechte Linien
   line(Spielfeldbreite/3,offsetY,Spielfeldbreite/3,Spielfeldhohe);
   line(Spielfeldbreite*2/3,offsetY,Spielfeldbreite*2/3,Spielfeldhohe);
   
}

void drawX(int x,int y){
  //Zeichnet "X"
  int XKoordinate = Spielfeldbreite*x/3;
  int YKoordinate = Spielfeldhohe*y/3;
  int XEndKoordinate = Spielfeldbreite/3+XKoordinate;
  int YEndKoordinate = Spielfeldhohe/3+YKoordinate;
  
  line(XKoordinate,YKoordinate,XEndKoordinate,YEndKoordinate);
  line(XEndKoordinate,YKoordinate,XKoordinate,YEndKoordinate );
}

void draw0(int x, int y){
  //Zeichnet "0"
  int XKoordinate = Spielfeldbreite*x/3;
  int YKoordinate = Spielfeldhohe*y/3;
  int XMittelpunkt = Spielfeldbreite/6+XKoordinate;
  int YMittelpunkt = Spielfeldhohe/6+YKoordinate;
  
  circle(XMittelpunkt,YMittelpunkt,Spielfeldbreite/3);
}

void mouseClicked(){
  int X = 3*mouseX/Spielfeldbreite;
  int Y = 3*mouseY/Spielfeldhohe;
  drawX(X,Y);
  draw0(X,Y);
  
}







//void mouseClicked(){
  //line(0,0,mouseX,mouseY);
