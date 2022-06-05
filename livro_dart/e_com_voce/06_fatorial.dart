void main() {
  print(fatorial(3));
}

int fatorial(int numero) {
  if (numero == 0) return 1;
  var resultado = 1;
  for (var i = 1; i <= numero; i++) {
    resultado *= i;
  }
  return resultado;
}


// o fatorial de um número é representado por
// n! , onde n é um número qualquer natural, e o resultado é o
// valor do produto de todos os números inteiros menores ou iguais a
// n . Simplificando, o fatorial de 4, por exemplo, seria 4! = 4 * 3
// * 2 * 1 = 24 , obedecendo à regra especial de que 0! = 1 .