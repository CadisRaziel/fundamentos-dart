import 'dart:io';

void main() {
  print('-------- Palíndromo --------');
  print('> Informe sua frase ou palavra:');
  //replaceAll(' ', '') -> se digitar a b c d, ele vai remover os espaços deixando assim abcd (o trim nao funcinou nao sei porque)
  String? frase = stdin.readLineSync()?.replaceAll(' ', '').toLowerCase();
  String? frasePalavraContraria = frase?.split('').reversed.join();
  print('\n$frase => $frasePalavraContraria \n');

  if (frase == frasePalavraContraria) {
    print('É um palíndromo !! o/');
  } else {
    print('Não é um palíndromo!!');
  }
  print('-------------------------');
}
