//* Isp: muitas interfaces especificas são melhores que uma geral

abstract class Conta {
  void depositar(int val) => print('depositando..');
  void transferir(int valor) => print('transferindo...');
  void realizarEmprestimo() => print('realizando emprestimo...');
}

//O problema aqui é que estamos dependendo da interface 'Conta'
//e essa interface oferece muitas coisas que podiam ser separadas em interfaces diferentes
// Repare em 'ContaPoupanca' tem 2 metodos da interface que não funciona nela
// para isso tivemos que retornar uma exception (mais poderiamos ter evitado se tivessemos varias interface para cada coisa)

class ContaCorrente extends Conta {
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

class ContaPoupanca extends Conta {
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

//! Solução

abstract class Conta2 {
  void depositar(int val);
}

abstract class CestaDeServicos {
  void transferir(int valor);
  void realizarEmprestimo();
}

class ContaCorrente2 extends Conta2 implements CestaDeServicos {
  @override
  void depositar(int val) {
    // TODO: implement depositar
  }

  @override
  void realizarEmprestimo() {
    // TODO: implement realizarEmprestimo
  }

  @override
  void transferir(int valor) {
    // TODO: implement transferir
  }
}

class ContaPoupanca2 extends Conta2 {
  @override
  void depositar(int val) {
    // TODO: implement depositar
  }
}
