// Juarez Giacomo Ramiro 91434/5
// Brian Emanuel Díaz 91306/9
// Facundo Bernal 91488/1
//  Comisión Lisandro
// https://youtu.be/Ha-SyfJn2SU

GestorDeInteraccion g;
ArrayList<Cuadrados1> cs;
void setup () {
  size (600, 600);
  g = new GestorDeInteraccion();
  cs = new ArrayList<Cuadrados1>();
 
  background(255);
}

void draw () {
  
  background(255);
  g.actualizar();

  if (g.arriba) {
    cs.add(new Cuadrados1(random(width), height, 0, -1));
  }
  if (g.abajo) {
    cs.add(new Cuadrados1(random(width), 0, 0, 1));
  }
  if (g.derecha) {
    cs.add(new Cuadrados1(0, random(height), 1, 0));
  }
  if (g.izquierda) {
    cs.add(new Cuadrados1(width, random(height), -1, 0));
  }
  
    if (g.movGrande) {
    crearGrandes();
  } else if (g.movPeque) {
    crearPeques();
  }

  for (Cuadrados1 c : cs) {
    c.dibujar();
    
  }
}
