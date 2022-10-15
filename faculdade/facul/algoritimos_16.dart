import 'dart:io';
import 'dart:math' as math;

void main() {
  program();
}

/*Faça um programa que receba o ano de nascimento de uma pessoa e o ano atual, calcule e mostre:
a) a idade dessa pessoa;
b) quantos anos ela terá em 2050.
 */

void program() {
  int idade;
  int idadeFuturo;

  print('Digite seu ano de nascimento: ');
  int anoNascimento = int.parse(stdin.readLineSync() ?? '');
  print('Digite o ano atual: ');
  int anoAtual = int.parse(stdin.readLineSync() ?? '');

  idade = anoNascimento - anoAtual;
  print("Sua idade atual é: $idade");

  idadeFuturo = anoNascimento - 2050;
  print("Sua idade em 2050 é: $idadeFuturo");
}
