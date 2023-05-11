class GestorDeInteraccion {
  Dir_y_Vel mouse;
  boolean seMoviaEnElFrameAnterior;

  boolean movGrande;
  boolean movPeque;
  float tiempoGrande;
  float tiempoPeque;


  boolean arriba;
  boolean abajo;
  boolean derecha;
  boolean izquierda;

  GestorDeInteraccion() {
    mouse = new Dir_y_Vel();
  }

  void actualizar() {
    mouse.calcularTodo(mouseX, mouseY);

    //----- que pasa con el mouse en este frame
    boolean seMueveElmouseEnEsteFrame = false;
    float sensibilidad = 50;
    if (mouse.velocidad()>sensibilidad && mouse.velocidad()<150) {
      seMueveElmouseEnEsteFrame = true;
    }
    arriba = false;
    abajo = false;
    derecha = false;
    izquierda = false;

    if (seMueveElmouseEnEsteFrame &&
      !seMoviaEnElFrameAnterior) {
      arriba = mouse.direccionY()<-sensibilidad?true:false;
      abajo = mouse.direccionY()>sensibilidad?true:false;
      derecha = mouse.direccionX()>sensibilidad?true:false;
      izquierda = mouse.direccionX()<-sensibilidad?true:false;
    }
    seMoviaEnElFrameAnterior = seMueveElmouseEnEsteFrame;
    
        movGrande = false;
    movPeque = false;
    tiempoGrande--;
    tiempoPeque--;
    tiempoGrande = constrain(tiempoGrande, 0, 90);
    tiempoPeque = constrain(tiempoPeque, 0, 90);
    println(tiempoPeque);
    if (mouse.velocidad()>10) {
      float umbral = 40;
      if (mouse.velocidad()>umbral) {
        tiempoGrande+=10;
        tiempoPeque-=10;
      } else {
        if (tiempoGrande<10) {
          tiempoPeque+=10;
        }
      }
    }

    if (tiempoGrande>55) {
      movGrande = true;
    } 
    if (tiempoPeque>55) {
      movPeque = true;
    }
  }
  }
