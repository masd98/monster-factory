class Pierna extends Monster {
  float inicio;
  boolean bool=false;
  PVector vec=new PVector(0, 0);
  float roat;
  Pierna(float x ) {  
    super(x);
  }
  void display() {
    super.display();
    translate(vec.x, vec.y);
    translate(inicial-500, 0);
    rotate(roat);
    rotate(-inicio);
    pushStyle();
    stroke(0, 255, 0);
    line(0, 0, 55, 0);

    if (inicio>=11*PI/6) {
      bool=false;
      inicio=inicio-incr1;
    } else if (inicio>(4*PI)/3&&!bool) {
      inicio=inicio-incr1;
    } else if (inicio>(4*PI)/3&&bool) {
      inicio=inicio+incr1;
    } else if (inicio<=(4*PI)/3&&!bool) {
      inicio=inicio+incr1;
      bool=true;
    } 
    translate(55, 0);
    rotate(-inicio);
    line(0, 0, 55, 0);
    popStyle();  
    resetMatrix();
  }



  void pos(PVector v, float r, float start) {
    inicio =start;
    roat=r;
    vec.x=v.x;
    vec.y=v.y;
    translate(vec.x, vec.y);
    translate(inicial-500, 0);
    rotate(roat);
    rotate(-inicio);
    pushStyle();
    stroke(255, 0, 0);
    line(0, 0, 55, 0);

    translate(55, 0);
    rotate(-inicio);
    line(0, 0, 55, 0);
    popStyle();  
    resetMatrix();
  }

  void pos() {
    translate(vec.x, vec.y);
    translate(inicial-500, 0);
    rotate(roat);
    rotate(-inicio);
    pushStyle();
    stroke(255, 0, 0);
    line(0, 0, 55, 0);

    translate(55, 0);
    rotate(-inicio);
    line(0, 0, 55, 0);
    popStyle();  
    resetMatrix();
  }
}
