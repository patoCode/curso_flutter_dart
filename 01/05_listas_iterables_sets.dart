void main() {
 
  // Listas, iterables y sets
  // ESTO ES UNA "LISTA" PORQUE USA []
  final numbers = [1,2,3,4,5,5,5,5,6,7,8,9,9,9,10];
  print("List $numbers");
  print("Length ${numbers.length}");
  print("Index ${ numbers[0] }");
  print("Index ${ numbers.first }");
  print("reverse ${ numbers.reversed }");

  
  // ESTO ES UN "ITERABLE" PORQUE AHORA TIENE () EN LUGAR DE [] EN SU DEFINICION
  final reverseNumber = numbers.reversed;  
  print("Iterable ${ reverseNumber }");
  print("Iterable to List ${ reverseNumber.toList() }");
  
  
  // ESTO ES UN "SET" DE DATOS PORQUE USA {}, FIJATE QUE SOLO SE VE EL ELEMENTO 1 VEZ, YA QUE LOS SETS TIENEN ESTA CUALIDAD IMPLICITA
  final setNumbers = reverseNumber.toSet();
  print("Set de datos:  ${ setNumbers }");
  final numbersGreaterthan5 = numbers.where( (int num){
    return num > 5;
  });
  print("Iterable:  ${ numbersGreaterthan5 }");
  print("Set de datos(sin elementos repetido):  ${ numbersGreaterthan5.toSet() }");
  
  
}
