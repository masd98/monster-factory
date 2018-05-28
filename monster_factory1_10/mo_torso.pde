
class Torso extends Monster {
  PVector vec=new PVector(0, 0);
  float roat=0;
  int y=0;
  boolean unavez=true;
  PImage sprite;
  PImage spriteT;
  color sel;

  Torso(float x) {  
    super(x);
  }

  void display() {
    super.display();
    translate(vec.x, vec.y);
    translate(inicial-500, 0);
    rotate(roat);
    //line(0, 0, -25, 100);
    resetMatrix();
  }

  void pos(PVector v, float r, PImage i_torso, PImage i_torso2,color col) {
    sel =col;
    sprite=i_torso;
    spriteT=i_torso2;
    roat=r;
    vec.x=v.x;
    vec.y=v.y;
    //println(vec.x);

    pushStyle();
    stroke(255, 0, 0);
    translate(vec.x, vec.y);
    translate(inicial-500, 0);
    rotate(roat);
    //line(0, 0, -25, 100);
    imageMode(CENTER);
    image(sprite, 25, 0, 200, 200);
    tint(sel);  // Tint blue
    image(spriteT, 25, 0, 200, 200);
    //println(vec.x, vec.y);

    popStyle();  
    resetMatrix();
  }
  void pos() {
    pushStyle();
    stroke(255, 0, 0);
    translate(vec.x, vec.y);
    translate(inicial-500, 0);
    rotate(roat);
    //line(0, 0, -25, 100);
    imageMode(CENTER);
    image(sprite, 25, 0, 200, 200);
    tint(sel);  // Tint blue
    image(spriteT, 25, 0, 200, 200);
    //println(vec.x, vec.y);
    popStyle();  
    resetMatrix();
  }
}
