class Cuerpo {
  boolean unavez=true;
  float x=500;

  int tcc, bcc, pcc;
  Torso[] torsos;
  Brazo[] brazos;
  Pierna[] piernas;

  PImage i_torso;
  PImage i_torso2;
  PImage i_brazo1;
  PImage i_brazo1_2;
  PImage i_brazo2;
  PImage i_pierna1;
  PImage i_pierna1_2;
  PImage i_pierna2;



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

      String vart1= new String("torsos/");
      String var1= new String(".png");   
      String cadena1=  vart1 + Integer.toString(imgs)+ var1;

      String vart2= new String("torsos/m");
      String cadena2=  vart2 + Integer.toString(imgs)+ var1;

      i_torso = loadImage(cadena1);
      i_torso2 = loadImage(cadena2);

      torsos[contador].pos(vector, i, i_torso, i_torso2, col); 
      for (int i = 0; i < contador; i++) {
        torsos[i].pos();
      }
      tcc=contador;
      break;
    case 1:
      var1= new String(".png"); 
      String varb1= new String("manos/");
      String varb2= new String("manos/m"); 
      String varb3= new String("manos/n"); 
      String cadenab1=  varb1 + Integer.toString(imgs)+ var1;
      String cadenab2=  varb2 + Integer.toString(imgs)+ var1;
      String cadenab3=  varb3 + Integer.toString(imgs)+ var1;

      i_brazo1 = loadImage(cadenab1);
      i_brazo1_2 = loadImage(cadenab2);
      i_brazo2 = loadImage(cadenab3);

      for (int i = 0; i < tcc; i++) {
        torsos[i].pos();
      }
      if (key=='1') {
        brazos[contador].pos(vector, i, 4, i_brazo1, i_brazo1_2, i_brazo2, col);
      } else if (key=='2') {
        brazos[contador].pos(vector, i, 5.7, i_brazo1, i_brazo1_2, i_brazo2, col);
      } else {
        brazos[contador].pos(vector, i, 4, i_brazo1, i_brazo1_2, i_brazo2, col);
      }
      for (int i = 0; i < contador; i++) {
        brazos[i].pos();
      }


      bcc=contador;

      break;
    case 2:
     var1= new String(".png"); 
      String varp1= new String("piernas/");
      String varp2= new String("piernas/m"); 
      String varp3= new String("piernas/n"); 
      String cadenap1=  varp1 + Integer.toString(imgs)+ var1;
      String cadenap2=  varp2 + Integer.toString(imgs)+ var1;
      String cadenap3=  varp3 + Integer.toString(imgs)+ var1;
    
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
