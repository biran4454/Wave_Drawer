// Draws waves
ArrayList<Dot> points = new ArrayList<Dot>();

float amplitude = 40;
float wavelength = 10;
int tick = 0;
int mode = 1;

void setup(){
  size(1000, 700, P2D);
  background(255);
  for(int i = 0; i < width; i++){
    points.add(new Dot(i, y(0)));  
  }
  if(10 / wavelength == float("Infinity")){
    print("Wavelength must not be 0\nSet wavelength to 10.");
    wavelength = 10;
  }
}
void draw(){
  background(255);
  if(mode == 0){
    Dot dot = points.get(0);
    dot.drawDot(y( sin(float(tick) / wavelength) * amplitude ));
    for(int i = width - 1; i > 0; i--){
      dot = points.get(i);
      Dot pDot = points.get(i - 1);
      float y = pDot.y;
      dot.drawDot(y); //y( sin(float(i) / wavelength) * amplitude )
    }
  } else if(mode == 1){
    Dot dot = points.get(0);
    dot.drawDot(y( sin(float(tick) / wavelength) * amplitude ));
    dot = points.get(1);
    dot.drawDot(y( sin(float(tick) / wavelength) * amplitude ));
    for(int i = width - 1; i > 1; i--){
      dot = points.get(i);
      Dot pDot = points.get(i - 2);
      float y = pDot.y;
      dot.drawDot(y);
    }
  } else if(mode == 2){
    Dot dot = points.get(0);
    dot.drawDot( mouseY );
    dot = points.get(1);
    dot.drawDot( mouseY );
    for(int i = width - 1; i > 1; i--){
      dot = points.get(i);
      Dot pDot = points.get(i - 2);
      float y = pDot.y;
      dot.drawDot(y);
    }
  } else if(mode == 3){
    Dot dot = points.get(0);
    dot.drawDot( mouseY );
    dot = points.get(1);
    dot.drawDot( mouseY );
    dot = points.get(2);
    dot.drawDot( mouseY );
    for(int i = width - 1; i > 2; i--){
      dot = points.get(i);
      Dot pDot = points.get(i - 3);
      float y = pDot.y;
      dot.drawDot(dot.y + (y - dot.y) * 0.6);
    }
  } else if(mode == 4){
    Dot dot = points.get(0);
    dot.drawDot( mouseY );
    dot = points.get(1);
    dot.drawDot( mouseY );
    dot = points.get(2);
    dot.drawDot( mouseY );
    for(int i = width - 1; i > 2; i--){
      dot = points.get(i);
      Dot pDot = points.get(i - 3);
      float y = pDot.y;
      dot.drawDot(dot.y + (y - dot.y) * (dot.y - y) / 10000); // ((y - dot.y) / 10000) //<>//
    }
  }
  tick ++;
}
float y(float pY){
  return((height / 2) + pY);
}
