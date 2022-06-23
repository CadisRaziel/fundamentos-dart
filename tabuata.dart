import 'dart:io';

void main() {
  print('Coloque o numero');
  int number = int.parse(stdin.readLineSync() ?? '');
  print('Até vezes que numero?');
  int quantidade = int.parse(stdin.readLineSync() ?? '');
  for (var i = 0; i <= quantidade; i++) {
    print('$number * $i = ${number * i}');
  }
}
