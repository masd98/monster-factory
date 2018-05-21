abstract class Monster {
  float inicial=500;

  Monster(float x) {
    inicial=x;
  }
  
  void display(){
     if (inicial<width) {
      inicial=inicial+1;
    }
    if (inicial>=width) {
      inicial=0;
    } 
  }
}
