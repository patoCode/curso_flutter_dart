// MIXINS => Los conoces mas como herencia multiple
// DOCUMENTO DE REFERENCIA: https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
abstract class Animal {}

abstract class Mamifero extends Animal{}
abstract class Ave extends Animal{}
abstract class Pez extends Animal{}

// UN MIXIN es como una clase convencional, usando siempre la palabra "MIXIN" para indicar esta propiedad
abstract mixin class Volador{
  void volar () => print("Im Flying!!!");
}

abstract mixin class Caminante{
  void caminar () => print("Im Walking!!!");
}

abstract mixin class Nadador{
  void nadar () => print("Im Swimming!!!");
}

class Dolphin extends Mamifero with Nadador {}
class Bat extends Mamifero with Volador, Caminante {}
class Cat extends Mamifero with Caminante {}

class Dove extends Ave with Caminante, Volador{}
class Duck extends Ave with Nadador, Caminante, Volador{}

class Shark extends Pez with Nadador{}
class FlyingFish extends Pez with Nadador, Volador{}


void main(){
  
  final flipper = Dolphin();
  flipper.nadar();
  print("============");
  final donald = Duck();
  donald.caminar();
  donald.nadar();
  donald.volar();
  
}
