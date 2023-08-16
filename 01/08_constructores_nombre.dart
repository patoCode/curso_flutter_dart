// Name Constructors: CONSTRUCTORES POR NOMBRE
void main() {
  
  final Hero robocop = Hero(name: "Alex Morphy", 
                            power: "Balazos", 
                            isAlive: false);
  print(robocop);
  
  
  // USANDO EL CONSTRUCTOR POR NOMBRE
  // Esto es como las funciones extendidas en Kotlin
  final Map<String, dynamic> rawJson ={
    "name":"Shazam",
    "power":"Magic",
    "isAlive":true
  };
  
  final Hero shazam = Hero.fromJson(rawJson);
  print(shazam);
  
}



class Hero{
  String name;
  String power;
  bool isAlive;
  
  Hero({required this.name, this.power = 'NONE', required this.isAlive});
  
  Hero.fromJson(Map<String, dynamic> json)
    : name = json["name"] ?? "No name found",
      power = json["power"] ?? "No name found",
      isAlive = json["isAlive"] ?? false;
  

  @override
  String toString(){
    return "$name, $power, isAlive: ${ isAlive ? 'Yes!': 'Nope!' }";
  }
  
}
