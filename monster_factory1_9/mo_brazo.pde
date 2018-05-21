class Brazo extends Monster {
  float inicio;
  boolean bool=false;
  PVector vec=new PVector(0, 0);
  float roat;

  Brazo(float x) {  
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
    line(0, 0, 40, 0);

    if (inicio>=11*PI/6) {
      bool=false;
      inicio=inicio-0.03;
    } else if (inicio>(5*PI)/4&&!bool) {
      inicio=inicio-0.03;
    } else if (inicio>(5*PI)/4&&bool) {
      inicio=inicio+0.03;
    } else if (inicio<=(5*PI)/4&&!bool) {
      inicio=inicio+0.03;
      bool=true;
    } 
    translate(40, 0);
    rotate(inicio*-0.2);
    line(0, 0, 40, 0);
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
    line(0, 0, 40, 0);

    translate(40, 0);
    rotate(inicio*-0.2);
    line(0, 0, 40, 0);
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
    line(0, 0, 40, 0);
    

    translate(40, 0);
    rotate(inicio*-0.2);
    line(0, 0, 40, 0);
    imageMode(CENTER);
    image(img, 25,0, 50, 50);
    popStyle();  
    resetMatrix();
  }
}
