//! Verificação para rodar em tempo de desenvolvimento

class Clientes {
  String? nome;
  String? cpf;
  String? razaoSocial;
  String? cnpj;
  Clientes({
    this.nome,
    this.cpf,
    this.razaoSocial,
    this.cnpj,
    //? se nome der falso eu digo o seguinte (Nome não pode ser nullo)
    //! Porém o asser deixou de ser útil ja que o nullSafety ta ai pra exatamente isso
  })  : assert(nome != null, 'Nome não pode ser nullo'),
        assert(cpf != null, 'Cpf não pode ser nullo'),
        assert(cnpj != null, 'cnpj não pode ser nullo'),
        assert(razaoSocial != null, 'razaoSocial não pode ser nullo');
}

class Clientinhos {
  String? nome;
  String? cpf;
  String? razaoSocial;
  String? cnpj;
  Clientinhos({
    this.nome,
    this.cpf,
    this.razaoSocial,
    this.cnpj,
    //! Ele pode ser útil para fazer validações
    //! Olha essa validação para ver se ele é pessoa fisica (é o primeiro assert)
    //! Olha essa validação para ver se ele é pessoa juridica (é o segundo assert)
    //? ainda sim é algo que o nullSafety faz
  })  : assert(
            (cpf != null)
                ? nome != null && razaoSocial == null && cnpj == null
                : true,
            'Você enviou cpf junto com cnpj ou razão social'),
        assert(
            (cnpj != null)
                ? razaoSocial != null && nome == null && cpf == null
                : true,
            'Você enviou cnpf junto com cpf ou nome');
}
