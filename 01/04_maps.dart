
void main() {
  
  //MAPAS
  final Map<String, Object> pokemon = {
    "name": "Ditto",
    "hp": 100,
    "isAlive": true,
    "abilities":<String>["h1"],
    'sprites': {
      1: "ditto/front",
      2: "ditto/back",
    }
  };
  print(pokemon);
  print("SPRITES: ${pokemon['sprites']}");
  print("SPRITES: ${pokemon['sprites']}");
}
