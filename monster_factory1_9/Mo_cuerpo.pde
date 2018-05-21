class Cuerpo {
  boolean unavez=true;
  float x=500;

  int tcc, bcc, pcc;
  Torso[] torsos;
  Brazo[] brazos;
  Pierna[] piernas;

  PImage i_torso;


  Cuerpo () {
    torsos= new Torso[10];
    for (int i = 0; i < torsos.length; i++)
      torsos[i] =new Torso(x);

    brazos= new Brazo[10];
    piernas =new Pierna[10];
    for (int i = 0; i < brazos.length; i++) {
      brazos[i] =new Brazo(x);
      piernas[i]=new Pierna(x);
    }
  }

  void pos(float y) {
    x=y;
    switch(tecla) {
    case 0:
      if (imgs>4)
        imgs=1;

      String var1= new String("torsos/");
      String var2= new String(".png");   
      String cadena1=  var1 + Integer.toString(imgs)+ var2;

      i_torso = loadImage(cadena1);
      torsos[contador].pos(vector, i, i_torso ); 
      for (int i = 0; i < contador; i++) {
        torsos[i].pos();
      }
      tcc=contador;
      break;
    case 1:
      if (key=='1') {
        brazos[contador].pos(vector, i, 4);
      } else if (key=='2') {
        brazos[contador].pos(vector, i, 5.7);
      }
      for (int i = 0; i < tcc; i++) {
        torsos[i].pos();
      }
      for (int i = 0; i < contador; i++) {
        brazos[i].pos();
      }
      bcc=contador;
      break;
    case 2:
      if (key=='1') {
        piernas[contador].pos(vector, i, (4*PI)/3);
      } else if (key=='2') {
        piernas[contador].pos(vector, i, 11*PI/6);
      }

      for (int i = 0; i < tcc; i++) {
        torsos[i].pos();
      }
      for (int i = 0; i < bcc; i++) {
        brazos[i].pos();
      }
      for (int i = 0; i < contador; i++) {
        piernas[i].pos();
      }
      pcc=contador;
      break;
    case 3:
      for (int i = 0; i < tcc; i++) {
        torsos[i].pos();
      }
      for (int i = 0; i < bcc; i++) {
        brazos[i].pos();
      }
      for (int i = 0; i < pcc; i++) {
        piernas[i].pos();
      }
      break;
    }
  }

  void display() { 
    println("t", tcc, "b", bcc, "p", pcc);
    for (int i = 0; i < tcc; i++) {
      torsos[i].display();
    }
    for (int i = 0; i < bcc; i++) {
      brazos[i].display();
    }
    for (int i = 0; i < pcc; i++) {
      piernas[i].display();
    }
  }
}
