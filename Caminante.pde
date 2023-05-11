class Cuadrados1 {

  int a=0;
  int b=0;
  
  float x, y;
  float vx, vy;
  color c;
  Cuadrados1(float x_, float y_, float vx_, float vy_) {
    x = x_;
    y = y_;
    vx = vx_;
    vy = vy_;
    c = color(random(255), random(255), random(255));
  }


  void dibujar() {

    x += vx;
    y += vy;
    
         if (mouseX<width) {
  if (mouseX<height) {
    for (a=0; a<8; a++) {

      for ( b=0; b<8; b=b+1) {

        if ( (a+b) % 2==0) {
          fill(c/2);
        } else {
          fill(c);
        }
        rect(a*75, b*75, 50, random(50, mouseY));
        //
        if ( (a+b) % 2==0) {
          triangle(565-a*40 + 15, 565-b*35 + 15, 565-a*40 + 5, 565-b*35 + 30, 565-a*40 + 25, 565-b*35 + 30);
          
        } else {
          line(565-a*40 + 15, 550-b*35 + 15, 565-a*40 + 15, 565-b*35 + 30);
          fill(c/3);
        }
        if ( (a+b) % 7==0) {
          fill(c);
          rect(a*75, b*75, random(50, mouseX), 50);
        }
      }
    }
      }
    }
  }
}

void crearGrandes() {
  float t = random(100, 150);

  int a=0;
  int b=0;

  noStroke();
  for (a=0; a<8; a++) {

    for ( b=0; b<8; b=b+1) {

      if ( (a+b) % 2==0) {
        
         if (mouseX<width+5.0) {
        fill(random(150, 255), random(150, 255), random(150, 255));
      }
      
      //    rect(10+b*25, 10+a*25, 20, 20);

      rect(random(width), random(height), t, t);
    }
    }
  }
}


void crearPeques() {
  float t = random(20,20);

  int a=0;
  int b=0;


  noStroke();


  for (a=0; a<8; a++) {

    for ( b=0; b<8; b=b+1) {

      if ( (a+b) % 2==0) {
         if (mouseX<width/2.0) {
        fill(random(150, 255), random(150, 255), random(150, 255));
        
      rect(random(width), random(height), t, t);
      }
      }
      //    rect(10+b*25, 10+a*25, 20, 20);

    }
  }

}
