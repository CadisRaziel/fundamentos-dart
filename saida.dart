void main() {
  int saida = 0;
  for (int i = 0; i < 40; i++) {
    saida = ++i;
    print('i -> $i');
  }
  print('Saida -> $saida');
}
