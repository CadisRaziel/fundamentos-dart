void main() {
  //! Extends -> Pode herdar tanto de uma classe concreta, quanto de uma classe abstract (obriga a implementar o contrato)
  //! Implements -> vai tratar todas as implementações como contrato
}

abstract class ContratoExtends {
  void printName() {
    //*Extends pode usar o que tiver dentro da função !!!
    //* Extends -> Reaproveita a função aqui, a classe que herdar aproveita o corpo dessa função !!
    print('oi');
  }
}

abstract class ContratoImplements {
  //* Implements só vai usar contrato assim !!! (sem nada dentro da função)
  //* Implements -> não reaproveita a funçao aqui, a classe que herdar tem que ter seu propriop corpo de funçao !!
  void printName();
}
