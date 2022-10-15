import 'dart:io';

void main() {
  salarioComBonusEimposto();
}

/*Faça um programa que receba o salário base de um funcionário, calcule e mostre o salário a receber,
sabendo-se que o funcionário tem gratificação de 5% sobre o salário base e paga imposto de 7% também sobre o salário base. */

void salarioComBonusEimposto() {
  double salarioBonificacao;
  double imposto;
  double salarioAreceber;

  print('Digite o salario do funcionario: ');
  double salario1 = double.parse(stdin.readLineSync() ?? '');

  salarioBonificacao = salario1 * 5 / 100;
  imposto = salario1 * 7 / 100;
  salarioAreceber = salario1 + salarioBonificacao - imposto;
  print('O salário a receber é: R\$${salarioAreceber.toStringAsFixed(2)}');
}
