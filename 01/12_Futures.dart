// FUTURES = Similar a una Promesa

void main(){
  
  print("Inicio del Main");
  
  // THEN cuando todo es OK
  // CATCHERROR en caso de error
  httpGet("URL-DE_EJEMPLO")
    .then((value){
      print(value);
    })
    .catchError((err){
      print("ERROR: $err");
    });
  
  print("Fin del Main");
  
}

Future httpGet(String uri){
  
  return Future.delayed( Duration(seconds: 1), (){
    throw "Error en la peticion HTTP";
    // return "Respuesta del Future";
  });
  
}
