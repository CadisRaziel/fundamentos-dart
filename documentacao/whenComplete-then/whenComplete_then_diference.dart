void main() {
  //*.whenComplete = A função dentro .whenComplete é chamada quando esse futuro é concluído, seja com um VALOR ou com um ERRO.

  //*.then = Retorna um novo Future que é completado com o resultado da chamada para onValue,
  //* (se este futuro completar com um valor) ou para onError (se este futuro completar com um erro)

  //! O .then se vier com um erro ele não funciona, para isso precisamos passar o 'catchError' ai ele fica parecido com o .whenComplete
  //! tipo o whenComplete mesmo dando erro ele pode ser chamado, ja o .then não, para o .then ser chamado caso ouver um erro precisa do 'catchError'
  someFuture.catchError(
    (onError) {
      print("called when there is an error catches error");
    },
  ).then((value) {
    print("called with value = null");
  }).whenComplete(() {
    print("called when future completes");
  });

  // se você colocar catchError antes de .then, .then é chamado porque catchError retorna um Future completamente novo,
  // aliás se fosse retornar um erro dentro catchError .then não seria disparado,
}
