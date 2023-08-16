// CLASES
void main() {
  
  final Hero spiderman = Hero(name: 'Peter', power: 'Web');
  
  print(spiderman);
  print(spiderman.name);
  print(spiderman.power);
  
}


class Hero{
  
  String name;
  String power;
  
  Hero({
    required this.name, 
    required this.power
    }
  );
  
  // SobrEscribiendo la funcion
  @override
  String toString(){
    return "Custom $name, $power";
  }
  
  //** Constructor que inicializa los atributos inmediatamente se lo llama **/
  // Hero(String pName, String pPower): name = pName, power = pPower;
  
}
