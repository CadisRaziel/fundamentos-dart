import 'dart:io';

void main() {
  depositoErendimento();
}

/*Faça um programa que receba o valor de um depósito e o valor da taxa de juros, calcule e mostre o
valor do rendimento e o valor total depois do rendimento.*/

void depositoErendimento() {
  double valorRendimento;
  double totalValorDepoisDoRendimento;

  print('Digite o valor do deposito: ');
  double deposito = double.parse(stdin.readLineSync() ?? '');
  print('Digite o valor da taxa de juros: ');
  double taxaJuros = double.parse(stdin.readLineSync() ?? '');

  valorRendimento = deposito * taxaJuros / 100;
  totalValorDepoisDoRendimento = deposito + valorRendimento;
  print('Deposito -> R\$${deposito.toStringAsFixed(2)}');
  print('Taxa de juros -> $taxaJuros%');
  print('O valor do rendimento é R\$${valorRendimento.toStringAsFixed(2)}');
  print(
      'O valor total depois do rendimento é R\$${totalValorDepoisDoRendimento.toStringAsFixed(2)}');
}
