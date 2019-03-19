class puntaje{ //clase de puntaje para trabajar con el objeto puntaje que son los puntos maximos se acaba el juego cuando un jugador alcanza ese puntaje
int jugVer=0,jugAzu=0,punM; //variables que se usaran para almacenar los puntos que lleva cada jugador y el puntaje maximo 
boolean jugando=true; //variable activada mientras se tenga menos de 10 puntos para cada jugador
  puntaje(int p){//constructor para llenar la variable de puntos maximos
punM=p;
}
void jugar(){//metodo que llama los otros metodos para usarlos en la clase principal
puntos();
Marcador();
}
void jugadorVerde(){//metodo de cuando el jugador verde anote se aumenta la variable en 1 para sumar un punto al maracdor
if(jugando){
jugVer ++;
println("Jugador Verde anota Marcador: Jugador Verde: "+jugVer+"| Jugador Azul: "+jugAzu);
}
}
void jugadorAzul(){//metodo de cuando el jugador azul anote se aumenta a variable en 1 para sumar un punto al marcador
if(jugando){
jugAzu ++;
println("Jugador Azul anota Marcador: Jugador Verde: "+jugVer+"| Jugador Azul: "+jugAzu);
}
}
void puntos(){//metodo que compara los puntos de los jugadores, cuando uno llegue al maximo se acaba el juego
if(jugVer>= punM || jugAzu>=punM){
jugando=false;
}
}
void Marcador(){// metodo crea un marcador en el juego 
fill(0,250,0);
text("Jugador Verde: "+jugVer,114,height-20);
fill(0,0,255); text("Jugador azul: "+jugAzu,width-200,height-20);
if(!jugando){//cuando se termina el juego y la variable jugando se apaga el juego muestra que jugador gano comparando los marcadores con un if 
fill(0);
stroke(0);
rect(0,0,width,height);
fill(0,250,0);
if(jugAzu>=punM){
fill(0,0,255);
text("Gano jugador Azul!!!",width/2,height/2);
}else{
text("Gano jugador Verde!!!",width/2,height/2);
}
}
}
}