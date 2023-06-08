// Comisión Lisandro.

//Grupo: Juarez Giacomo Ramiro 91434/5 Brian Díaz 91306/8 Facundo Bernal 91488/1

// Variable contador para aumentar el índice del arreglo
let contador = 0;

let imgcuadrado; // Declarar variable 'img'.
let imgdiag2;
let imgdiag;

let cuadrado; // declarar objeto
//let figuras;

// No hacer q el png lo levante el objeto, hacer arreglo en png en setup
function setup() {
  createCanvas(windowWidth, windowHeight);
  
  // crear objeto
  cuadrado = new Cuadrado();
//  figuras = new Figuras();
  
  imgcuadrado = loadImage('img/cuadradoblanco.png'); // Cargar la imagen
  
  imgdiag = loadImage('img/diagblanco.png');
  
  imgdiag2 = loadImage('img/imgdiag2.png');
  
}

function draw() {
  background(100);
  // clase + prop
  cuadrado.dibujar();
//  figuras.dibujar();
}

// clase Cuadrado
class Cuadrado {
  constructor() {
    this.tamano = 60;
    this.velocidad = 1;
    this.i = 0;
    this.j = 0;
  }

 
  // Arreglo de cuadrados, posiciones de cuadrados 
// Cantidad de forma dinámica

//
  dibujar() {
     //agregar if
  // Pasar a ciclo for lo q tenemos
     for(this.i=10; this.i<800; this.i+=width/8){
    for(this.j=10; this.j<800; this.j+=height/8){
      
      if(( 20+this.j*2 * 20+this.i*2) % 2==0) { // aca va cambiando la posicion de los cuadrados con diagonal de  a cuantos cuadros aparece
        
         tint(color(this.i/2,mouseY, mouseX))
        image( imgcuadrado, this.i, this.j, this.tamano);
        tint(color(random(this.i), mouseY , mouseX));
        image( imgdiag, this.i, this.j, this.tamano)
         tint(color(random(this.i,mouseY, mouseX)))
        image( imgdiag2, this.i, this.j, this.tamano);
        

        } else {   image(imgcuadrado, this.i, this.j, this.tamano); }
      tint(color(this.i/2,mouseY, mouseX))
        
      
    } 
    }
     
}
}
//class Figuras {
 // constructor() {
   // this.tamano = 60;
   // this.i = 0;
   // this.j = 0;

 // }
  // dibujar() {
    //img png
  // Muestra la imagen en la posición (0, height/2) a la mitad del tamaño
//    for(this.i=10; this.i<400; this.i+=width/8+mouseX){   
   // for(this.j=10; this.j<400; this.j+=height/8+mouseY){
 //     tint(color(this.i/2,mouseY, mouseX));
     
 // image(imgdiag, this.i, this.j, this.tamano);

 //   }
  //}
     
    //   for(this.i=10; this.i<800; this.i+=width/8+mouseX){
  //  for(this.j=10; this.j<800; this.j+=height/8+mouseY){
      
    //  if(( this.j % this.j) % 2==0) { // aca va cambiando la posicion de los cuadrados con diagonal de  a cuantos cuadros aparece
        
      //   tint(color(this.i/2,mouseY, mouseX))
        //image( imgcuadrado, this.i, this.j, this.tamano);
        
        // tint(color(this.i*8,mouseY, mouseX))
        //translate(width / 8, height / 8);
        //rotate(PI / 3.0);
        //image( imgdiag, this.i, this.j, this.tamano);
        
     // }else {   image(imgcuadrado, this.i, this.j, this.tamano); }
      //tint(color(this.i/2,mouseY, mouseX))