//* LSP: Os subtipos devem ser substituives pelos seus tipos base
// ou seja, a classe principal 'Conta' pode ser implementada por outras classes mais sem quebar o sistema
// Repare nas permissoes de ContaCorrente e ContaPoupança e os 'throw'

abstract class Conta {
  void depositar(int val) => print('depositando..');
  void transferir(int valor) => print('transferindo...');
  void realizarEmprestimo() => print('realizando emprestimo...');
}

class ContaCorrente implements Conta {
  @override
  void depositar(int val) {
    print('depositando.. $val');
  }

  @override
  void transferir(int valor) {
    print('transferindo... $valor');
  }

  @override
  void realizarEmprestimo() {
    print('realizando emprestimo...');
  }
}

class ContaPoupanca implements Conta {
  //! Repare que na conta poupança 2 metodos não funcionam pela limitação de ser poupança
  void depositar(int val) {
    print('depositando.. $val');
  }

  @override
  void transferir(int valor) {
    throw Exception('conta poupança não faz transferencia');
  }

  @override
  void realizarEmprestimo() {
    throw Exception('conta poupança não faz emprestimo');
  }
}

void main() {
  Conta c = ContaCorrente();
  c.realizarEmprestimo();
  c = ContaPoupanca();
  c.realizarEmprestimo();
}
