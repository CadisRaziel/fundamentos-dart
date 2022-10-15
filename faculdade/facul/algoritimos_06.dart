import 'dart:io';

void main() {
  salarioCom25Porcento();
}

/*Faça um programa que receba o salário de um funcionário, calcule e mostre o novo salário, sabendo-se
que este sofreu um aumento de 25%. */

void salarioCom25Porcento() {
  double salarioAumento;

  print('Digite o salario do funcionario: ');
  double salario1 = double.parse(stdin.readLineSync() ?? '');

  salarioAumento = salario1 + salario1 * 25 / 100;
  print('O salário com aumento é: R\$${salarioAumento.toStringAsFixed(2)}');
}
