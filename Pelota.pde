class pelota{// se crea la clase para trabajar con el objeto pelota
float x,y,tama;//variabkes de la pelota  
float vel,velIni,incremento;//
float dirx=1,diry=0,efect=35.0;//
pelota(float posX,float posY,float vcd,float inc,float tam){// se crea el objeto
x = posX;
y = posY;
vel=velIni=vcd;
tama=tam;
incremento=inc;
}
void jugar(){//manda llamar los otros metodos
move();
paletas();
anotacion();
pel();
}
void move(){//metodo que hace que se mueva la pelota va aumentando las x y y que son la posicion de la pelota
x=x+dirx*vel;
y=y+diry*vel;
}
void paletas(){//se comprueba si la pelota topa con la paleta izquierda se mandan llamar las variables de posicion de la pelota
if(x-tama/2<=palI.Contactox()){//si la pelota esta en la misma posicion de largo que la paleta 
if(y>palI.Contactoy()-50&&y<palI.Contactoy()+50){//si la pelota esta en la misma altura que la paleta 
dirx=abs(dirx);// se cambia la direccion de la pelota se inviert
vel=vel+incremento;// se incrementa la velocidad de la pelota
diry=-(palI.Contactoy()-y)/efect;//se invierte la direccion de la pelota 
}
}
else if(x+tama/2>=palD.Contactox()){//se comprueba si la pelota topa con la paleta derecha se mandan llamar las variables de posicion de la pelota
if(y>palD.Contactoy()-50&&y<palD.Contactoy()+50){//si la pelota esta en la misma posicion de largo que la paleta 
dirx=-abs(dirx);//si la pelota esta en la misma altura que la paleta
vel=vel+incremento;// se cambia la direccion de la pelota se inviert
diry=-(palD.Contactoy()-y)/efect;//se invierte la direccion de la pelota 
}
}
}
void anotacion(){
if(y<0||y>height){// si la pelota topa en los bordes superior o inferior
diry=-diry;// solo se invierte su direccion
}
if(x<0){//si topa en el porde izquierdo se anota un punto al jugador azul
puntosM.jugadorAzul();//se manda llamar al metodo para sumar los puntos al marcador
sacarPel("toLeft");//la pelota se saca del lado que perdio
}
else if(x>width){//si topa en el borde derecho se anota un punto al jugador verde
puntosM.jugadorVerde();// se manda llamar al metodo para sumar los puntos al marcador
sacarPel("toRight");// la pelota se saca del lado que perdio
}
}
void sacarPel(String p){// es para reiniciar la pelota
vel=velIni;// se pone la velocidad inicial
if(p=="toLeft"){//direccion de la pelota y posicion de acuerdo al jugador que perdio en este caso hacia la izquierda que es el jugador verde que perdio
dirx=-1;
diry=0;
x=width/2;
y=height/2;
}
else{//si no se pone la direccion derecha 
  dirx=1;
  diry=0;
  x=width/2;
  y=height/2;
}
}
void pel(){// se crea la pelota
noStroke();
fill(255,0,0);
ellipse(x,y,tama,tama);
}
}