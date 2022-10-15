import 'dart:io';

void main() {
  salarioComAumento();
}

/*Faça um programa que receba o salário de um funcionário e o percentual de aumento, calcule e mostre
o valor do aumento e o novo salário. */

void salarioComAumento() {
  double aumento;
  double salarioComAumento;

  print('Digite o salario do funcionario: ');
  double salario = double.parse(stdin.readLineSync() ?? '');
  print('Digite o percentual de aumento: ');
  double percentualAumento = double.parse(stdin.readLineSync() ?? '');

  aumento = salario * percentualAumento / 100;
  salarioComAumento = salario + aumento;
  print(
      "O salario com o auemnto de $percentualAumento% é: R\$${salarioComAumento.toStringAsFixed(2)}");
}
