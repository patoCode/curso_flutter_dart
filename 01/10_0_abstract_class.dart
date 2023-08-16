// ABSTRACT CLASS
void main() {
  
  
}

// Los ENUM no terminan en punto y coma y tampoco tienen igual
// los valores van sin comillas!!!
enum VehicleType { gas, diesel, gnv }

abstract class Vehicle{
  
  double whells;
  VehicleType type;
  
  Vehicle({
    required this.whells,
    required this.type
  });
  
  void start(bool isActive);
  
}