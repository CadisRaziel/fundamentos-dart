//* OCP: nos informa que devemos ser capazes de extender um comportamento de classe sem modifica-lo

class Pagamento {
  void pagarBoleto() => print('Pagando boleto');
  void pagarImposto() => print('Pagando imposto');
}

//Não vamos pegar uma classe que esta em produção e modificar ela, adicionar um novo tipo de pagemento por exemplo
//para isso vamos criar uma nova classe e dar um extends incluindo isso (um novo fluxo)

//* Solução:

// Criando uma classe que sabe apenas 'pagar'
abstract class Pagamento2 {
  int valor = 20;
  void pagar();
}

//!Obs importante: repare como o 'extends' e 'implements' se comporta herdando 'metodo e variavel'

// na extensão reutilizamos o valor
class PagamentoBoleto extends Pagamento2 {
  @override
  void pagar() {
    //veja que o metodo 'pagar' ele consegue pegar o 'valor' que esta em sua classe
    print('Pagando boleto $valor');
  }
}

// na herença re-implementamos o valor
class PagamentoImposto implements Pagamento2 {
  @override
  int valor = 10;

  @override
  void pagar() {
    print('Pagando imposto $valor');
  }
}

// nova forma de pagamento
class PagamentoCartao extends Pagamento2 {
  @override
  void pagar() {
    print('Pagar com cartão');
  }
}
