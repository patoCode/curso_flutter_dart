// ASYNC AWAIT
// ASYNC es para indicar que la funcion retorna un Future
// AWAIT funciona igual que en JavaScript
// ASYNC solo funciona cuando hay AWAIT, OJO!!!
void main() async{
  
  print("Inicio del Main");
  
  try{
    final peticion = await httpGet("URL-DE_EJEMPLO");
    print(peticion);
  } catch(err){
    print("ERROR: $err");
  }
  
  print("Fin del Main");
  
}

Future<String> httpGet(String uri) async{
  await Future.delayed( const Duration(seconds: 1));
  
  throw "Error!!!";
  
  return "Respuesta del Future";
}
