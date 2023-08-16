//STREAMS
// Es flujo de datos constante de informacion
void main() async{
    
    emitNumbers()
    // Los STREAMS solo funcionan si hay alguien que los escuche de lo contrario no funcionan.
    .listen( (value) {
      print("Stream value $value");
    });
  
}

Stream<int> emitNumbers(){
  return Stream.periodic(const Duration(seconds: 1), (value){
    return value; 
  }).take(5);
}
