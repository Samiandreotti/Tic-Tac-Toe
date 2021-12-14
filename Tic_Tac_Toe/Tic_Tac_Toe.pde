void setup(){
  size(800,800);
}

void draw(){
  //Zwei waagrechte Linien
  line(10,267,800,267);
  line(10,534,800,534);
  
  // Zwei senkrechte Linien
   line(267,10,267,800);
   line(534,10,534,800);
   drawX();
   draw0();
}

void drawX(){
  //Zeichnet "X"
  line(267,10,534, 267);
  line(534,10,267, 267);
}

void draw0(){
  //Zeichnet "0"
  circle(width/6,height/6,250);
}







//void mouseClicked(){
  //line(0,0,mouseX,mouseY);
