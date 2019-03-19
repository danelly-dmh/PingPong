class paletai{//clase para trabajar con el objeto paleta izquierda
float x,y=height/2;//variables para la posicion de la paleta 
int ancho,altura;//variables para las dimensiones de la paleta 
paletai(float esp,int anc,int alt){//constructor para llenar los datos de la paleta 
x=esp; // la posicion de la paleta que es espacio que se deja de espacio entre el borde y la paleta 
ancho=anc; // las dimensiones de la paleta 
altura=alt;
}
void jugar(){//metodo que llama a los otros metodos para usar en la clase principal
movimiento();
pali();
}
void movimiento(){// metodo para mover la paleta en este caso con las teclas a y z 
if(keyPressed){
if(key=='a'){
y=y-10;
}else if(key=='z'){
y=y+10;
}
}
}
void pali(){//metodo para crear la paleta 
noStroke();
fill(0,255,0);
rect(x,y,ancho,altura);
}
float Contactoy(){// variables que se usan en la clase circulo para saber cuando toca la pelota en la paleta 
return y+altura/2;
};
float Contactox(){
return x+ancho;
};
}