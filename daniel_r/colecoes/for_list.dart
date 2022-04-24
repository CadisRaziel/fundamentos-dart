void main() {
  List<String> nomes = [
    'Vitor',
    'Ariella',
    'Giovanna',
    'Rosana',
    'Monique',
    'Michele',
    'Anastacio'
  ];

  //?Usando metodos para varios itens ao mesmo tempo (1º forma de fazer)
  // for (int i = 0; i < nomes.length; i++) {
  //   print(nomes[i].toUpperCase());
  // }

  //?Usando metodos para varios itens ao mesmo tempo (2º forma de fazer)
  // for (String nome in nomes) {
  //   print(nome.toUpperCase());
  // }

  //!Diferença entre for e for in
  //!no For(1º forma) eu posso passar o indice por onde quero começar (int i = 0; ou int i = 3;)
  //!para fazer isso no for in eu deveria colocar nomes.sublist(0) posso colocar inicio e fim tambem no for in nomes.sublist(0, 5)

  //?Usando metodos para varios itens ao mesmo tempo (3º forma de fazer)
  nomes.forEach((nome) {
    print(nome.toUpperCase());
  });
  //Posso tambem passar aqui o nomes.sublist(0).forEach
}
