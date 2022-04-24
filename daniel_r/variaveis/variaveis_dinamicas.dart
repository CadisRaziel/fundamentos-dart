void main() {
  //O var vai ser atribuido com o primeiro valor que ele receber (ou seja, string, bool, double, num, int...)
  //Ou seja, abaixo ele foi atribuido com uma string, então ele sempre sera uma string
  var nome = 'vitor';
  // var nome = 3; //? => Repare que eu tentei atribuir um inteiro, ele nao deixou porque ela é uma string

  //==================================\\

  //Ja o dynamic é ao contratio, eu posso reatribuil com qualquer valor
  dynamic nome2 = 'bz';
  nome2 = 2;
  nome2 = 2.1;
  nome2 = false;

  String oi = ''' colocando
3 aspas simples
ou pode ser aspas duplas tanto faz
eu consigo fazer quebras de linhas
sem ter que utilizar o \n''';
}
