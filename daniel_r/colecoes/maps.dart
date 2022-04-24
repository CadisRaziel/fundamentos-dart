void main() {
  //não faz sentido tentar acessar o Map pelo indice !! (mais tem como !)
  Map<int, String> ddds = {
    17: "São josé do rio preto",
    11: "São paulo",
    19: "Campinas",
    41: "Curitiba"
  };

  //Ele por padrão pode retornar um null(caso a chave tiver errada)
  print(ddds[11]);

  print(ddds.length);

  //Adicionando uma chave e valor no map
  ddds[61] = "Brasilia";

  //remover uma chave e o valor (repare que só colocamos a chave, porém ele remove os dois)
  ddds.remove(41);

  //vai printa só os valores
  print(ddds.values);

  //printa só as chaves
  print(ddds.keys);

  //se contem uma chave especifica
  print(ddds.containsKey(11));

  //se contem um valor especifico
  print(ddds.containsValue("São paulo"));

  //forEach -> passa por cada elemento
  ddds.forEach((key, value) {
    print('key $key Value $value');
  });

  //clear -> remove todos os dados do map
  ddds.clear();

  //addAll -> adiciona um novo chave e valor dentro do nosso map
  ddds.addAll({90: 'Londres'});

  //caso a gente queira remover os ddd que for diferente de 17
  ddds.removeWhere((key, value) => key != 17);
}
