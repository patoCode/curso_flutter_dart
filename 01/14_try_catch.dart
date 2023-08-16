// TRY CATCH
void main() async{
  
  print("Inicio del Main");
  
  try{
    final peticion = await httpGet("URL-DE_EJEMPLO");
    print(peticion);
  } 
  // BLOQUE ESPECIAL donde DART permite interceptar una excepcion generica o custom.
  on Exception catch(err){
    print("Tenemos Exception $err");
  } catch(err){
    print("OPS!!! ERROR: $err");
  } finally{
    print("FIN DE BLOQUE TRY");
  }
  
  print("Fin del Main");
  
}

Future<String> httpGet(String uri) async{
  await Future.delayed( const Duration(seconds: 1));
  
  throw "Error!!!";
  
  // return "Respuesta del Future";
}
