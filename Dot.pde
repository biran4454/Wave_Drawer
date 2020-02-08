public class Dot {
  Dot(int startX, float startY){
    x = startX;
    y = startY;
  }
  public float x, y;
  void drawDot(){
    stroke(0);
    point(x, y);
  }
  void drawDot(float newY){
    y = newY;
    stroke(0);
    strokeWeight(10);
    point(x, y);
  }
}
