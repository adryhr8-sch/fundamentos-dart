//Sesion 02A
//Tipos de datos dinámicos

void main(){
  dynamic myVar = "Scott Summers";
  print("El valor de myVar es: $myVar");
  myVar = 5;
  print("El valor de myVar es: $myVar");
  myVar = [1,2,3,4,5];
  print("El valor de myVar es: $myVar");
  myVar = ()=>{true};
  print("El valor de myVar es: $myVar");
  myVar = null;
  print("El valor de myVar es: $myVar");

  final Map<String, dynamic> persona = {
    "edad": 25,
    "nombre": "Emma Frost",
    "peso": 62.5,
    "mutantante": true,
    "academias":{
      0: "Academia Massachussets",
      1: "Academia X-men"      
    },
    "poderes":<String>["Control mental", "Ilusiones", "Ataques Psiquicos"]
  };
  print("persona: $persona");
  print("Edad: ${ persona["edad"] } ");
  print("Nombre: ${ persona["nombre"] } ");
  print("Academias ${ persona["academias"] }");
  print("Academia1 ${ persona["academias"][0] }");
  print("Poderes ${ persona["poderes"] }");
  print("Poder 1 ${ persona["poderes"][0] }");

  final numeros =<int>[4,5,9,7,5,3];
  print("Lista de numeros: $numeros");
  print("Longitud: ${ numeros.length }");
  print("El valor 0 de la lista es: ${ numeros[0]}");
  print("El ultimo valor es: ${ numeros[numeros.length - 1 ]}");

  print("El primer valor es ${numeros.first}");
  print("El ultimo valor es ${numeros.last}");
  final numerosReversed = numeros.reversed;
  print("Reversed to list: ${ numerosReversed.toList() } ");
  print("Reversed to set: ${ numerosReversed.toSet() } ");

  //Uso de filtros
  final numerosGrandes = numeros.where( ( int numero ){
    return numero > 5;
  });

  print("Numeros grandes: ${numerosGrandes.toList()}");
}