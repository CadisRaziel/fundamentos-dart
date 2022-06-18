//* Dip: depender de abstrações e não de classes concretas

class PagamentoRepository {
  void save() => print('salvando pagamento');
}

class ContaCorrente {
  PagamentoRepository? _pagamentoRepository;
  ContaCorrente() {
    //Repare que o construtor depende de uma classe concreta
    //qual o problema disso? : a gente nao consegue TESTAR
    _pagamentoRepository = PagamentoRepository();
  }

  void executarAlgumaLogica() {
    _pagamentoRepository?.save();
  }
}

// void main() {
//   ContaCorrente c = ContaCorrente();
//   c.executarAlgumaLogica();
// }

//! A violação acontece na linha 12 estamos dependendo de uma classe concreta
//! se quisermos fazer o mock por exemplo do repository, não será possivel

//! Solução: vamos inverter a responsabilidade

abstract class IPagamentoRepository {
  void save();
}

class PagamentoRepositoryImp implements IPagamentoRepository {
  @override
  void save() {
    print('implementação');
  }
}

class PagamentoRepositoryMock implements IPagamentoRepository {
  @override
  void save() {
    print('mock');
  }
}

class ContaCorrente2 {
  //* Conta corrente só tem que conhecer o contrato que faz pagamento
  //* Ela não conhece classes "ABSTRADAS !!!!"
  //* Quem chamar o ContaCorrente tem que me passar uma classe concreta (Repare no main abaixo)
  IPagamentoRepository? _repository;
  ContaCorrente2(IPagamentoRepository repository) {
    _repository = repository;
  }

  void executarAlgumaLogica() {
    _repository?.save();
  }
}

//!veja como agora é executavel e testavel
void main() {
  ContaCorrente2 c = ContaCorrente2(PagamentoRepositoryImp());
  c.executarAlgumaLogica();
  c = ContaCorrente2(PagamentoRepositoryMock());
  c.executarAlgumaLogica();
}
