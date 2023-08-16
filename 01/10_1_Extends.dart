// EXTENDS OR IMPLEMENTS
void main() {
 
  final tractor = Tractor(weight: 100);
  
  tractor.start();
  print(tractor.toString());
  
}

// Los ENUM no terminan en punto y coma y tampoco tienen igual
enum VehicleType { taxi, tractor, bike }

abstract class Vehicle{
  
  double whells;
  VehicleType type;
  
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

// !EXTENDS SIGNIFICA QUE HEREDAMOS TODOS LOS ELEMENTOS DE LA CLASE PADRE

class Tractor extends Vehicle{
   // Se debe definir como usaremos el contructor del padre con la palabra reservada super(....) y enviandole los parametros

   Tractor( { required double weight } )
      : super(type: VehicleType.tractor, whells: 4);
  
  @override
  void start(){
    print("$type Starting!!!");
  }
  
}