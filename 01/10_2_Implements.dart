// IMPLEMENTS
void main() {
  
  final tractor = Tractor(weight: 100);  
  
  tractor.start();
  print(tractor.toString());
  
  final bike = Bike(whells: 2);
  bike.start();
  print(bike.toString());
  
}

// Los ENUM no terminan en punto y coma y tampoco tienen igual
enum VehicleType { taxi, tractor, bike }

abstract class Vehicle{
  
  double whells;
  final VehicleType type;
  
  Vehicle({
    required this.whells,
    required this.type
  });
  
  void start();
  
  @override
  String toString(){
    return "TYPE: $type > WHELLS: $whells";
  }
  
}

// EXTENDS

class Tractor extends Vehicle{
  
   Tractor( { required double weight } )
      : super(type: VehicleType.tractor, whells: 4);
  
  @override
  void start(){
    print("$type Starting!!!");
  }
  
}

// IMPLEMENTS
// Es buena practica agregar las anotaciones de @override para iondicar las sobreescrituras
// OBLIGATORIO: Se debe hacer override de los metodos que vienen de la calase abstracta, caso contrario podria crashar
class Bike implements Vehicle{
  
  @override
  double whells;
  @override
  final VehicleType type = VehicleType.bike;
  
  Bike( { required this.whells } );
  
  @override
  void start(){
    print("$type RUNNING!!!");
  }
  
  @override
  String toString(){
    return "TYPE: $type IS RUNNING";
  }
  
}

