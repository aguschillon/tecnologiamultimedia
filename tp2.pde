/* Tecnología Multimedial 1.
Trabajo práctico Número 2
Profesor: David Bedoian
Comisión: 3
Alumno: Agustín Chillón
Legajo: 85130/3
Fecha: 10/06/2021
*/

//variables a utilizar
int velocity = 2;
int screen;
int pictureone, picturetwo, picturethree, picturefour, picturefive, picturesix, pictureseven, pictureeight, picturenine, pictureten , pictureeleven;
int text1, text2, text3, text4, text5, text6;
PImage tittle, pjkass, pjalexios, photo4, photo5, photo6;
PFont font ;

void setup (){
  background (0);
  size (600,600);
  //fuente a utilizar
  font = loadFont ("TrajanPro-Regular-48.vlw");
  textFont (font) ;
  
  
  
  //imagenes a projectar
  tittle = loadImage ("pantalla1.jpg");
  pjkass = loadImage ("kassandra.jpg");
  pjalexios = loadImage ("alexios.jpg");
  photo4 = loadImage ("parte4.jpg");
  photo5 = loadImage ("parte 5.jpg");
  photo6 = loadImage ("parte 6.jpg");
  //cuál va a ser la variable de los textos
  text1 = 200;
  text2 = 250;
  text3 = 1080;
  text4 = 2650;
  text5 = 2675;
  text6 = 2700;
  //cuál va a ser la variable de las imágenes
  pictureone = 550;
  picturetwo = 1100;
  picturethree = 1150;
  picturefour = 1400;
  picturefive = 1450;
  picturesix = 1700;
  pictureseven = 1750;
  pictureeight = 2000;
  picturenine = 2050;
  pictureten = 2300;
  pictureeleven = 2350;
}

void draw () {
  background (0);
  if (screen==0){
    textSize(50);
    fill(255,125,0);
    text("Assasins Creed", 100, text1);
    textSize(30);
    text("Odyssey",225,text2);
    // botton - proseguir a los créditos
    stroke (255);
    fill(255);
    rect(250, 290, 65, 30);
    textSize (10);
    fill(0);
    text ("CREDITOS", 255, 300);
  }
  
  if (screen==1) {
    textSize (15);
    text ("Te has sumergido en la vida de", 150,text3=text3-velocity);
    
    image(tittle, 50, pictureone=pictureone-velocity);
    textSize(20);
    fill(255,165,0);
    image(pjkass, 50,  picturetwo=picturetwo-velocity);
    text("Kassandra", 100, picturethree=picturethree-velocity);
    image(pjalexios, 50, picturefour=picturefour-velocity);
    text("Alexios", 75, picturefive=picturefive-velocity);
    image(photo4, 50, picturesix=picturesix-velocity);
    text("Para revivir la antigua Grecia", 75, pictureseven=pictureseven-velocity);
    image(photo5, 50, pictureeight=pictureeight-velocity);
    text("Y combatir en la Guerra De Peloponeso", 75, picturenine=picturenine-velocity);
    image(photo6, 50, pictureten=pictureten-velocity);
    text("Entre 431 a 422 AC", 75, pictureeleven=pictureeleven-velocity);
    
    //botton
    stroke(255);
    noFill();
    rect(8, 480, 43, 15);
    textSize(10);
    text("Saltear", 10, 490);
  
  }
  if (screen==2) {
    fill(255);
    textSize(20);
    text("Musicalización hecha por The lights", 110, 200);
    text("Desarrollado por UbisoftQuebec", 115, 250);
    text("Creado por UbisoftCompany", 135, 300);
    // back
    stroke(255);
    noFill();
    rect(235, 338, 100, 15);
    textSize(10);
    fill(255,125,0);
    text("Volver al inicio", 240, 350);
  }
}

void mouseClicked() {
  if (screen==0) {
    if (mouseX>230 && mouseX<270 && mouseY>290 && mouseY<300) {
      screen=1;
    }
  }
  if (screen==1) {
    if (mouseX>8 && mouseX<50 && mouseY>480 && mouseY<500) {
      screen=2;
    }
  }
  if (screen==2) {
    if (mouseX>215 && mouseX<290 && mouseY>338 && mouseY<360) {
      screen=0;
    }
  }
}
    
    
  
    
    
    

  
