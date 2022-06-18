//* Uma classe deve ter apenas um motivo para mudar
//* Sua responsabilidade é sempre em cima de um e apenas um ator

class ContaCorrente {
  validarContaExistente() {
    //Lógica
  }

  salvarModificacoes() {
    print('salvando no db....');
  }
}

//! Erro, na classe ContaCorrente temos a função para validar e uma para salvar no banco de dados
//! a função validar esta ok, mais a salvar no banco de dados não é pra ta ali, pois ela tem conexão com banco de dados
//! senha de usuario etc.... ela esta em um local totalmente errado
//* Solução: Devemos separar cada responsabilidade deixando o mais claro possivel
//* Um objeto nao pode e deve fazer mais do que é do domonio dele.

//? Lembre-se: Sua funcionalidade não importa a granularidade (pacote/modulo/classe/metodo/função)
//? não deve fazer o que não é proposto.

//TODO: Corrigindo e fazendo com que cada metodo tenha sua responsabilidade

class ContaCorrenteRepository {
  void save() => print('Salvando no db...');
}

class ContaCorrente2 {
  ContaCorrenteRepository _repository = ContaCorrenteRepository();

  validarContaExistente() {
    //Lógica
  }

  void salvarModificacoes() {
    _repository.save();
  }

  //* Com isso minha conta corrente não sabe se conectar com o database, ela não conhece mais meu banco
  //* ela sabe que tem um repository que faz isso
}
