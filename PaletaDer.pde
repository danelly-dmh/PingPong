class paletad{//clase para trabajar con el objeto paleta derecha
float x,y=height/2;//variables para la posicion de la paleta
int ancho,altura;//variables de la dimension de la paleta
paletad(float esp,int anc,int alt){//constructor paleta derecha
x=width-esp;
ancho=anc;
altura=alt;
}
void jugar(){//metodo para llamar los otros metodos y usarlos en la clase principal
movimiento();
pald();
}
void movimiento(){//metodo para hacer mover la paleta con las teclas de arriba y abajo
if(keyPressed && key== CODED){
if(keyCode==UP){
y=y-10;
}else if(keyCode==DOWN){
y=y+10;
}
}
}
void pald(){//metodo para dibujar la paleta 
noStroke();
fill(0,0,255);
rect(x,y,ancho,altura);
}
float Contactoy(){//variables que se usan en la clase de la pelota para saber cuando toca la pelota
return y+altura/2;
};
float Contactox(){
return x;
};
}