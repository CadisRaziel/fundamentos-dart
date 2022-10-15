void main() {
  List<Map<String, dynamic>> locations = [
    {"locationID": 1},
    {"locationID": 2},
    {"locationID": 3},
    {"locationID": 4},
    {"locationID": 5},
    {"locationID": 6},
  ];

  List<Map<String, dynamic>> minds = [
    {"mindname": 'um', "locationID": 1},
    {"mindname": 'dois', "locationID": 2},
    {"mindname": 'tres', "locationID": 3},
    {"mindname": 'quatro', "locationID": 4},
    {"mindname": 'cinco', "locationID": 5},
    {"mindname": 'seis', "locationID": 6},
    {"mindname": 'sete', "locationID": 7},
    {"mindname": 'oito', "locationID": 8},
    {"mindname": 'nove', "locationID": 9},
    {"mindname": 'dez', "locationID": 10},
  ];

//for só te da posibilidade de acessar um item dentro de uma lista

  int selectionLocation = 10;
  List rooms = [];
  List selectedmind =
      minds.where((e) => e['locationID'] == selectionLocation).toList();
  print(selectedmind);

  for (var mind in selectedmind) {
    minds.add(mind);
    print(minds);
  }
}
