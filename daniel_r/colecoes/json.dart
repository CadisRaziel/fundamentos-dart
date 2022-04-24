import 'dart:convert';

void main() {
  //? {} -> Objeto (indica que esta em um formato de map)

  //jsonDecode -> vai decodificar o json
  //Como nosso json começa com {} podemos guarda-lo em um Map
  //Repare que no json as chaves são 'strings' e os valores são varios, então colocamos dynamic
  Map<String, dynamic> dados = jsonDecode(dadosUsuario());
  print(dados['nome']);

  //Repare que endereços esta dentro de um map e que retorna outro map
  print(dados['endereço']['cidade']);

  //Repare que os cursos é uma lista de objetos(com isso devemos pegar como indice por ser lista)
  print(dados['cursos'][1]['dificuldade']);

  //!O json precisa estar formatado corretamente !!
}

String dadosUsuario() {
  //? """ """ -> String com mais de uma linha
  return """
 {
  "nome": "Vitor",
  "sobrenome": "Brussolo Zerbato",
  "idade": 29,
  "casado": false,
  "altura": 1.67,
  "cursos": [
    {
      "nome": "Dart",
      "dificuldade": 1
    },
    {
      "nome": "Flutter",
      "dificuldade": 2
    }
  ],
  "endereço": {
    "cidade": "São jose do rio preto",
    "pais": "Brasil",
    "numero": 198
  }
}
  """;
}
