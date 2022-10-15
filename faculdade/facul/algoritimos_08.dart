import 'dart:io';

void main() {
  input();
}

void input() {
  double media;
  print('Digite a nota numero 1 : ');
  double nota1 = double.parse(stdin.readLineSync() ?? '');
  print('Digite a nota numero 2 : ');
  double nota2 = double.parse(stdin.readLineSync() ?? '');
  print('Digite a nota numero 3 : ');
  double nota3 = double.parse(stdin.readLineSync() ?? '');

  media = (nota1 + nota2 + nota3) / 3;
  print('Resultado = $media');
}
