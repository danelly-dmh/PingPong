puntaje puntosM; //se crean los objetos
paletad palD;
paletai palI;
pelota pel;
void setup(){// se ponen los datos de los objetos
size(700,500);
smooth();
puntosM= new puntaje(10);
palD=new paletad(15,7,100);
palI=new paletai(15,7,100);
pel=new pelota(width/2,height/2,5,.25,25);
}

void draw(){//se llaman los metodos de las clases con el objeto credo
background(255);
pel.jugar();
palI.jugar();
palD.jugar();
puntosM.jugar();
}