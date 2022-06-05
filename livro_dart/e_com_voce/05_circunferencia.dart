import 'dart:io';
import 'dart:math';

void main() {
  print("------ Cálculo de circunferência ------");

  print("> Qual o raio para cálculo?");
  final raio = double.tryParse(stdin.readLineSync() ?? '');
  //tryParse() retorna null caso não consiga converter para double

  if (raio == null) {
    print('Esse não é um valor de raio válido..');
    exit(0); //Finaliza o programa
  } else {
    print('A circunferência é: ${2 * raio * pi}');
    // pi é uma constante de dart:math

  }
  print("------------------------");
}
