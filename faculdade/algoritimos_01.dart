import 'dart:io';

void main() {
  var x = func0(1, 2);
  print(x);

  var y = func1(3, 1);
  print(y);

  var z = func2(9, 9);
  print(z);

  var v = func3(100, 200);
  print(v);

  var b = func4(2, 3);
  print(b);

  escreva();
}

int func0(int n1, int n2) {
  return n1 * n2;
}

double func1(double n1, double n2) {
  if (n2 == 0) {
    print('Error number equal 0');
  }
  return n1 / n2;
}

double func2(double n1, double n2) {
  var z = (n1 + n2) / 2;
  if (z >= 7) {
    print('Aprovado');
  } else {
    print('reprovado');
  }
  return z;
}

double func3(double novo_sal, double sal_atual) {
  var v = novo_sal;
  if (v <= 500) {
    novo_sal = sal_atual * 1.20;
    print('1.20');
  } else {
    novo_sal = sal_atual * 1.10;
    print('1.10');
  }
  return v;
}

double func4(double n1, double n2) {
  //calcular a média ponderada entre duas notas
  return (n1 * 2 + n2 * 3) / 5;
}

void escreva() {
  double novo;
  print('Digite o preço');
  double preco = double.parse(stdin.readLineSync() ?? '');
  print('Digite o percentual');
  double percentual = double.parse(stdin.readLineSync() ?? '');
  novo = preco - (preco * percentual / 100);
  print('Novo preço = $novo');
}
