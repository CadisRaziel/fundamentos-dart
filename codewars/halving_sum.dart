// Given a positive integer n, calculate the following sum:
// n + n/2 + n/4 + n/8 + ...
// All elements of the sum are the results of integer divisoin.
// example: 25  =>  25 + 12 + 6 + 3 + 1 = 47

//------------------------------------------------------------

// Dado um inteiro positivo n, calcule a seguinte soma:
// n + n/2 + n/4 + n/8 + ...
// Todos os elementos da soma são os resultados da divisão inteira.
// exemplo: 25 => 25 + 12 + 6 + 3 + 1 = 47

void main() {
  print(halvingSum(25));
}

int halvingSum(int n) {
  int sum = 0;
  while (n > 0) {
    sum += n;
    n ~/= 2;
  }
  return sum;
}
