import 'dart:io';

void main() {
  mediaPonderara();
}

void mediaPonderara() {
  double media;

  print('Digite a primeira nota: ');
  double nota1 = double.parse(stdin.readLineSync() ?? '');
  print('Digite o primeiro peso: ');
  double peso1 = double.parse(stdin.readLineSync() ?? '');
  print('Digite a segunda nota: ');
  double nota2 = double.parse(stdin.readLineSync() ?? '');
  print('Digite o segundo peso: ');
  double peso2 = double.parse(stdin.readLineSync() ?? '');
  print('Digite a terceira nota: ');
  double nota3 = double.parse(stdin.readLineSync() ?? '');
  print('Digite o terceiro peso: ');
  double peso3 = double.parse(stdin.readLineSync() ?? '');

  media =
      (nota1 * peso1 + nota2 * peso2 + nota3 * peso3) / (peso1 + peso2 + peso3);

  print(media.toStringAsFixed(2));
}
