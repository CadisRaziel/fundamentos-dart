// You are given an odd-length array of integers, in which all of them are the same, except for one single number.
// Complete the method which accepts such an array, and returns that single different number.
// The input array will always be valid! (odd-length >= 3)

//--------------------------------------------------------------------

// Você recebe uma matriz de inteiros de comprimento ímpar , na qual todos eles são iguais, exceto por um único número.
// Complete o método que aceita tal array e retorna aquele único número diferente.
// A matriz de entrada sempre será válida! (comprimento ímpar >= 3)
void main() {
  print(stray([1, 1, 2]));
  print(stray([17, 17, 3, 17, 17, 17, 17]));
}

int stray(List<int> numbers) {
  return numbers.reduce((a, b) => a ^ b);
}
