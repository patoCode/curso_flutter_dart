
void main() {
  
  print( greetEveryone() );
  print( addTwoNumbers(10, 50) );
  print( greetPerson(name: "Juan", message:"Saludos") );
 
}

String greetEveryone() => "Hello";

int addTwoNumbers(int a, int b) => a + b;

// PARA DECIR QUE UN PARAMETRO ES OPCIONAL PONEMOS EL []; 
// IGUAL QUE EN PHP SE PUEDE PONER EL VALOR POR DEFECTO
int addTwoNumbersOptional(int a, [int b = 0]) => a + b;

// PARAMETROS CON NOMBRES
// LAS {} HACEN QUE LOS VALORES DE LAS VARIABLES SON OPCIONALES, ES DECIR PUEDEN SER NULOS
// required Obliga a que el parametro se envie OBLIGATORIAMENTE, por tanto el required no necesita un valor por defecto
String greetPerson({required String name, String message = "Hola,"}){
  return "$message $name";
}