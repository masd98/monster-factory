float i;
int contador=0;

Cuerpo monst= new Cuerpo();
PVector vector = new PVector(525, 200);
int value=0;
int tecla=0;
boolean estado=false;

PImage img;
int imgs=1;

void setup() {
  size (1000, 500);
  img = loadImage("background.png");
}
float incr1=0.023;
float incr2;

void draw() {
  background(125); 
  image(img,0,0, 1000, 500);
  //println(tecla);

  monst.pos(500);
  if (value==1) {
    monst.display();
  }
}

void mousePressed() {
  if (value==0) {
    vector.x=mouseX;
    vector.y=mouseY;
    //println(v1.x, v1.y);
  }
}

void keyPressed() {
  if (value == 0&& key=='b') {
    value = 1;
  } else {
    value = 0;
  }

  if (key==ENTER) {    
    estado=true;
  }

  if (key=='e'&&estado) {    
    tecla = tecla+1;
    contador=0;
    i=0;
    estado=false;
  }

  if (key=='+') {
    contador=contador+1;
  }     

  if (key == CODED) {
    if (keyCode == UP) {
      imgs=imgs+1;
    }
  }
}


void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  i=i+(e*0.1);
  //println(i);
}
