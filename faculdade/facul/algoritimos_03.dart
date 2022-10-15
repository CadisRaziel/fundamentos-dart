import 'dart:io';

void main() {
  numbers();
}

void numbers() {
  print('Digite o primeiro numero: ');
  int number1 = int.parse(stdin.readLineSync() ?? '');
  print('Digite o segundo numero: ');
  int number2 = int.parse(stdin.readLineSync() ?? '');

  if (number1 == number2) {
    print("Numeros iguais, 1º numero: $number1 -- 2º numero: $number2");
  } else if (number1 > number2) {
    print(
        "Numeros um é maior que o numero dois, 1º numero: $number1 -- 2º numero: $number2");
  } else {
    print(
        "numero um não é maior que o numero 2, 1º numero: $number1 -- 2º numero: $number2");
  }
}
