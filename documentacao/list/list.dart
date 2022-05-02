void main() {
//! Obs List:
  ///Importante bool growable = true -> []
  /// Uma coleção indexável de objetos com um comprimento.
  /// As subclasses desta classe implementam diferentes tipos de listas.
  /// Os tipos mais comuns de listas são:
  /// * **Lista de tamanho fixo**
  /// Ocorre um erro ao tentar usar as operações
  /// que pode alterar o comprimento da lista.
  /// * **Lista expansível**
  /// Implementação completa da API definida nesta classe.
  /// A lista de crescimento padrão, conforme criada por `[]`, mantém um buffer interno e aumenta esse buffer quando necessário.
  /// Isso garante que uma sequência de operações [add] será executada cada uma em constante amortizada Tempo.
  /// Definir o comprimento diretamente pode levar um tempo proporcional ao novo comprimento, e pode alterar a capacidade interna para que um add a seguir
  /// a operação precisará aumentar imediatamente a capacidade do buffer.
  /// Outras implementações de lista podem ter um comportamento de desempenho diferente.
  /// Exemplo de lista de tamanho fixo:
  /// ```dart
  /// final fixedLengthList = List<int>.filled(5, 0); // Cria uma lista de tamanho fixo.
  /// print(fixedLengthList); // [0, 0, 0, 0, 0]
  /// fixedLengthList[0] = 87;
  /// fixedLengthList.setAll(1, [1, 2, 3]);
  /// print(fixedLengthList); // [87, 1, 2, 3, 0]
  /// O comprimento da lista de comprimento-fixo não pode ser alterado ou aumentado
  /// fixedLengthList.length = 0; // Throws
  /// fixedLengthList.add(499); // Throws
  /// ```
  ///
  /// Exemplo de lista expansível:
  /// ```dart
  /// final growableList = <String>['A', 'B']; // Cria uma lista expansível.
  /// Para adicionar dados à lista expansível, use [operator[]=], [add] ou [addAll].
  /// growableList[0] = 'G';
  /// print(GrowableList); // [G, B]
  /// growableList.add('X');
  /// growableList.addAll({'C', 'B'});
  /// print(GrowableList); // [G, B, X, C, B]
  /// ```
  /// Para verificar onde o elemento está na lista, use [indexOf] ou [lastIndexOf].
  /// final indexA = growableList.indexOf('A'); // -1 (não está na lista)
  /// final firstIndexB = growableList.indexOf('B'); // 1
  /// final lastIndexB = growableList.lastIndexOf('B'); // 4
  /// ```
  /// Para remover um elemento da lista expansível, use [remove], [removeAt],[removeLast], [removeRange] ou [removeWhere].
  /// growableList.remove('C');
  /// growableList.removeLast();
  /// print(GrowableList); // [G, B, X]
  /// ```
  /// Para inserir um elemento na posição da lista, use [insert] ou [insertAll].
  /// growableList.insert(1, 'New');
  /// print(GrowableList); // [G, Novo, B, X]
  /// ```
  /// Para substituir um intervalo de elementos na lista, use [fillRange], [replaceRange] ou [setRange].
  /// growableList.replaceRange(0, 2, ['AB', 'A']);
  /// print(GrowableList); // [AB, A, B, X]
  /// growableList.fillRange(2, 4, 'F');
  /// print(GrowableList); // [AB, A, F, F]
  /// ```
  /// Para ordenar os elementos da lista, use [sort].
  /// growableList.sort((a, b) => a.compareTo(b));
  /// print(GrowableList); // [A, AB, F, F]
  /// ```
  /// Para embaralhar os elementos desta lista aleatoriamente, use [shuffle].
  /// growableList.shuffle();
  /// print(GrowableList); // por exemplo. [AB, F, A, F]
  /// ```
  /// Para encontrar o primeiro elemento que satisfaça algum predicado, ou dar um padrão valor se nenhum o fizer, use [firstWhere].
  /// bool isVowel(String char) => char.length == 1 && "AEIOU".contains(char);
  /// final firstVowel = growableList.firstWhere(isVowel, orElse: () => ''); //'''
  /// ```
  /// Existem métodos semelhantes [lastWhere] e [singleWhere].
  ///
  /// Uma lista é um [Iterable] e suporta todos os seus métodos, incluindo [where], [map], [whereType] e [toList].
  ///
  /// As listas são [Iteráveis]. A iteração ocorre sobre valores na ordem do índice.
  /// Mudando os valores não afetam a iteração, mas alterando o valor válido índices&mdash;ou seja, alterando o comprimento da lista&mdash;entre iteração
  /// etapas causa um [ConcurrentModificationError]. Isso significa que apenas cultivável listas podem lançar ConcurrentModificationError.
  /// Se o comprimento mudar temporariamente e é restaurado antes de continuar a iteração, o iterador pode não detectá-lo.
  ///
  /// Geralmente não é permitido modificar o tamanho da lista (adicionar ou remover elementos) enquanto uma operação na lista está sendo executada,
  /// por exemplo durante uma chamada para [forEach] ou [sort].
  /// Alterando o tamanho da lista enquanto ela está sendo iterada, seja iterando-a diretamente ou através da iteração de um [Iterable] que é apoiado pela lista,
  /// irá interrompe a iteração.

//! Deprecated("Use a list literal, [], or the List.filled constructor instead") external factory List([int? length]);
  /// Cria uma lista do comprimento fornecido.
  /// **NOTA**: Este construtor não pode ser usado em código null-safe.
  /// Use [List.filled] para criar uma lista não vazia.
  /// Isso requer um valor de preenchimento para inicializar os elementos da lista.
  /// Para criar uma lista vazia, use `[]` para uma lista expansível ou
  /// `List.empty` para uma lista de tamanho fixo (ou onde a capacidade de crescimento é determinada em tempo de execução).
  /// A lista criada tem tamanho fixo se [comprimento] for fornecido.
  /// ```dart
  /// var fixedLengthList = List(3);
  /// fixedLengthList.length; // 3
  /// fixedLengthList.length = 1; // Erro
  /// ```
  /// A lista tem comprimento 0 e é expansível se [comprimento] for omitido.
  /// ```dart
  /// var growableList = List();
  /// growableList.length; // 0;
  /// growableList.length = 3;
  /// ```
  /// Para criar uma lista expansível com um determinado comprimento, para um tipo de elemento anulável,
  /// apenas atribua o comprimento logo após a criação:
  /// ```dart
  /// List<SomeNullableType> growableList = []..length = 500;
  /// ```
  /// Para um tipo de elemento não anulável, uma alternativa é a seguinte:
  /// ```dart
  /// List<int> growableList = List<int>.filled(500, 0, growable: true);
  /// ```
  /// O [comprimento] não deve ser negativo ou nulo, se for fornecido.
  ///
  /// Se o tipo de elemento não for anulável, [length] não deve ser maior que zero.

//! List.filled(int length, E fill, {bool growable = false});
  /// Cria uma lista do comprimento dado com [fill] em cada posição.
  /// O [comprimento] deve ser um inteiro não negativo.
  /// Exemplo:
  /// ```dart
  /// final zeroList = List<int>.filled(3, 0, growable: true); // [0, 0, 0]
  /// ```
  /// A lista criada é de tamanho fixo se [growable] for false (o padrão) e cultivável se [growable] for verdadeiro.
  /// Se a lista for expansível, aumentar seu [comprimento] *não* inicializará novas entradas com [fill].
  /// Depois de criada e preenchida, a lista não é diferente de nenhuma outra lista expansível ou de tamanho fixo criada usando `[]` ou outros construtores [List].
  /// Todos os elementos da lista criada compartilham o mesmo valor [fill].
  /// ```dart
  /// final shared = List.filled(3, []);
  /// shared[0].add(499);
  /// print(shared);  // [[499], [499], [499]]
  /// ```
  /// Você pode usar [List.generate] para criar uma lista com tamanho fixo
  /// e um novo objeto em cada posição.
  /// ```dart
  /// final unique = List.generate(3, (_) => []);
  /// unique[0].add(499);
  /// print(unique); // [[499], [], []]
  /// ```

//! List.empty({bool growable = false});
  /// Cria uma nova lista vazia.
  /// Se [growable] for `false`, que é o padrão, a lista é uma lista de comprimento fixo de comprimento zero.
  /// Se [growable] for `true`, a lista é expansível e equivalente a `<E>[]`.
  /// ```dart
  /// final growableList = List.empty(growable: true); // []
  /// growableList.add(1); // [1]
  /// final fixedLengthList = List.empty(growable: false);
  /// fixedLengthList.add(1); // erro
  /// ```

//! List.from(Iterable elements, {bool growable = true});
  /// Pega uma lista ja criada
  /// O [Iterator] de [elements] fornece a ordem dos elementos.
  /// Todos os [elementos] devem ser instâncias de [E].
  /// Exemplo:
  /// ```dart
  /// final numbers = <num>[1, 2, 3];
  /// final listFrom = List<int>.from(numbers);
  /// print(listFrom); // [1, 2, 3]
  /// ```
  /// O iterável `elements` pode ter qualquer tipo de elemento, então este
  /// construtor pode ser usado para fazer downcast de uma `List`, por exemplo como:
  /// ```dart import:convert
  /// const jsonArray = '''
  ///   [{"text": "foo", "value": 1, "status": true},
  ///    {"text": "bar", "value": 2, "status": false}]
  /// ''';
  /// final List<dynamic> dynamicList = jsonDecode(jsonArray);
  /// final List<Map<String, dynamic>> fooData =
  ///     List.from(dynamicList.where((x) => x is Map && x['text'] == 'foo'));
  /// print(fooData); // [{text: foo, value: 1, status: true}]
  /// ```
  /// Este construtor cria uma lista expansível quando [growable] for true;
  /// caso contrário, ele retorna uma lista de tamanho fixo.

//! List.of(Iterable<E> elements, {bool growable = true});
  /// Cria uma lista de [elements].
  /// O [Iterator] de [elements] fornece a ordem dos elementos.
  /// Este construtor cria uma lista expansível quando [growable] for true;
  /// caso contrário, ele retorna uma lista de tamanho fixo.
  /// ```dart
  /// final numbers = <int>[1, 2, 3];
  /// final listOf = List<num>.of(numbers);
  /// print(listOf); // [1, 2, 3]
  /// ```

//! List.generate(int length, E generator(int index),{bool growable = true});
  /// Gera uma lista de valores.
  /// Cria uma lista com posições [comprimento] e a preenche com valores criados por
  /// chamando [generator] para cada índice no intervalo `0` .. `length - 1` em ordem crescente.
  /// ```dart
  /// final growableList =
  ///     List<int>.generate(3, (int index) => index * index, growable: true);
  /// print(growableList); // [0, 1, 4]
  /// final fixedLengthList =
  ///     List<int>.generate(3, (int index) => index * index, growable: false);
  /// print(fixedLengthList); // [0, 1, 4]
  /// ```
  /// A lista criada é de tamanho fixo se [growable] for definido como false.
  /// O [comprimento] deve ser não negativo.

//! List.unmodifiable(Iterable elements);
  /// Cria uma lista não modificável contendo todos os [elementos]. (ou seja deixa ela como const)
  /// O [Iterator] de [elements] fornece a ordem dos elementos.
  /// Uma lista não modificável não pode ter seu tamanho ou elementos alterados.
  /// Se os elementos são imutáveis, então a lista resultante também é imutável.
  /// ```dart
  /// final numbers = <int>[1, 2, 3];
  /// final unmodifiableList = List.unmodifiable(numbers); // [1, 2, 3]
  /// unmodifiableList[1] = 87; // Throws.
  /// ```

//! List<T> castFrom<S, T>(List<S> source) => CastList<S, T>(source);
  /// Adapta [source] para ser um `List<T>`.
  /// Sempre que a lista produzir um elemento que não seja um [T], o acesso ao elemento será lançado.
  /// Sempre que um valor [T] for tentado armazenado na lista adaptada, a loja lançará a menos que o valor também seja uma instância de [S].
  /// Se todos os elementos acessados ​​de [source] são realmente instâncias de [T], e se todos os elementos armazenados na lista retornada são realmente instância de [S],
  /// então a lista retornada pode ser usada como um `List<T>`.
  /// Métodos que aceitam `Object?` como argumento, como [contém] e [remove],
  /// passará o argumento diretamente para o método desta lista
  /// sem nenhuma verificação.

//!  void copyRange<T>(List<T> target, int at, List<T> source,[int? start, int? end]) {}
  /// Copia um intervalo de uma lista em outra lista.
  /// Esta é uma função utilitária que pode ser usada para implementar métodos como [setRange].
  /// O intervalo de [start] a [end] deve ser um intervalo válido de [source], e deve haver espaço para elementos `end - start` da posição [at].
  /// Se [start] for omitido, o padrão é zero.
  /// Se [end] for omitido, o padrão será [source].length.
  /// Se [source] e [target] são a mesma lista, sobreposição de origem e destino os intervalos são respeitados para que o intervalo de destino acabe contendo o
  /// conteúdo inicial do intervalo de origem.
  /// Caso contrário, a ordem de cópia do elemento não é garantida.

//! writeIterable<T>(List<T> target, int at, Iterable<T> source) {}
  /// Escreve os elementos de um iterável em uma lista.
  /// Esta é uma função utilitária que pode ser usada para implementar métodos como [definir todos].
  /// Os elementos de [source] são escritos em [target] da posição [at].
  /// O [source] não deve conter mais elementos após escrever o último posição de [destino].
  /// Se a fonte for uma lista, a função [copyRange] provavelmente será mais eficiente.

//! List<R> cast<R>();
  /// Retorna uma visão desta lista como uma lista de instâncias [R].
  /// Se esta lista contiver apenas instâncias de [R], todas as operações de leitura funcionará corretamente.
  /// Se alguma operação tentar ler um elemento que não é uma instância de [R], o acesso será lançado.
  /// Elementos adicionados à lista (por exemplo, usando [add] ou [addAll])
  /// devem ser instâncias de [R] para serem argumentos válidos para a função de adição,
  /// e também devem ser instâncias de [E] para serem aceitas por esta lista também.
  /// Métodos que aceitam `Object?` como argumento, como [contém] e [remove], passará o argumento diretamente para o método desta lista sem nenhuma verificação.
  /// Isso significa que você pode fazer `listOfStrings.cast<int>().remove("a")` com sucesso, mesmo que pareça não ter nenhum efeito.
  /// Tipicamente implementado como `List.castFrom<E, R>(this)`.

//! E operator [](int index);
  /// O objeto no [índice] dado na lista.
  /// O [index] deve ser um índice válido desta lista,
  /// o que significa que `index` deve ser não negativo e
  /// menor que [comprimento].

//! void operator []=(int index, E value);
  /// Define o valor no [índice] dado na lista para [valor].
  /// O [index] deve ser um índice válido desta lista, o que significa que `index` deve ser não negativo e menor que [comprimento].

//! void set first(E value);
  /// O primeiro elemento da lista.
  /// A lista não deve estar vazia ao acessar seu primeiro elemento.
  /// O primeiro elemento de uma lista pode ser modificado, diferente de um [Iterable].
  /// Um ​​`list.first` é equivalente a `list[0]`, tanto para obter quanto para definir o valor.
  /// ```dart
  /// numbers.first = 10;
  /// print(numbers.first); // 10
  /// numbers.clear();
  /// numbers.first; // Throws.
  /// ```

//! void set last(E value);
  /// O último elemento da lista.
  /// A lista não deve estar vazia ao acessar seu último elemento.
  /// O último elemento de uma lista pode ser modificado, diferente de um [Iterable].
  /// Um ​​`list.last` é equivalente a `theList[theList.length - 1]`, tanto para obter quanto para definir o valor.
  /// ```dart
  /// final numbers = <int>[1, 2, 3];
  /// print(numbers.last); // 3
  /// ```

//! int get length;
  /// O número de objetos nesta lista.
  /// Os índices válidos para uma lista são `0` até `length - 1`.
  /// ```dart
  /// final numbers = <int>[1, 2, 3];
  /// print(numbers.length); // 3
  /// ```

//! set length(int newLength);
  /// Definir o `length` altera o número de elementos na lista.
  /// A lista deve ser expansível.
  /// Se [newLength] for maior que o comprimento atual, novas entradas são inicializadas para `null`,
  /// então [newLength] não deve ser maior que o comprimento atual se o tipo de elemento [E] não for anulável.
  /// ```dart
  /// final maybeNumbers = <int?>[1, null, 3];
  /// maybeNumbers.length = 5;
  /// print(maybeNumbers); // [1, null, 3, null, null]
  /// maybeNumbers.length = 2;
  /// print(maybeNumbers); // [1, null]
  /// final numbers = <int>[1, 2, 3];
  /// numbers.length = 1;
  /// print(numbers); // [1]
  /// numbers.length = 5; // Throws, cannot add `null`s.
  /// ```

//! void add(E value);
  /// Adiciona [valor] ao final desta lista, estendendo o comprimento em um.
  /// A lista deve ser expansível.
  /// ```dart
  /// final numbers = <int>[1, 2, 3];
  /// numbers.add(4);
  /// print(numbers); // [1, 2, 3, 4]
  /// ```

//! void addAll(Iterable<E> iterable);
  /// Anexa todos os objetos de [iterable] ao final desta lista.
  /// Estende o comprimento da lista pelo número de objetos em [iterable].
  /// A lista deve ser expansível.
  /// ```dart
  /// final numbers = <int>[1, 2, 3];
  /// numbers.addAll([4, 5, 6]);
  /// print(numbers); // [1, 2, 3, 4, 5, 6]
  /// ```

//! Iterable<E> get reversed;
  /// Um ​​[Iterable] dos objetos nesta lista em ordem inversa.
  /// ```dart
  /// final numbers = <String>['two', 'three', 'four'];
  /// final reverseOrder = numbers.reversed;
  /// print(reverseOrder.toList()); // [four, three, two]
  /// ```

//! void sort([int compare(E a, E b)?]);
  /// Classifica esta lista de acordo com a ordem especificada pela função [compare].
  /// A função [compare] deve atuar como um [Comparator].
  /// ```dart
  /// final numbers = <String>['two', 'three', 'four'];
  /// Ordena do menor para o maior.
  /// numbers.sort((a, b) => a.length.compareTo(b.length));
  /// print(numbers); // [two, four, three]
  /// ```
  /// As implementações padrão de [List] usam [Comparable.compare] if [comparar] é omitido.
  /// ```dart
  /// final numbers = <int>[13, 2, -11, 0];
  /// numbers.sort();
  /// print(numbers); // [-11, 0, 2, 13]
  /// ```
  /// Nesse caso, os elementos da lista devem ser [Comparable] para uns aos outros.
  /// Um ​​[Comparator] pode comparar objetos como iguais (retornar zero), mesmo que eles são objetos distintos.
  /// A função sort não tem garantia de estabilidade, então objetos distintos que comparam como iguais podem ocorrer em qualquer ordem no resultado:
  /// ```dart
  /// final numbers = <String>['one', 'two', 'three', 'four'];
  /// numbers.sort((a, b) => a.length.compareTo(b.length));
  /// print(numbers); // [one, two, four, three] OR [two, one, four, three]
  /// ```

//! void shuffle([Random? random]);
  /// Embaralha os elementos desta lista aleatoriamente.
  /// ```dart
  /// final numbers = <int>[1, 2, 3, 4, 5];
  /// numbers.shuffle();
  /// print(numbers); // [1, 3, 4, 5, 2] OR some other random result.
  /// ```

//! int indexOf(E element, [int start = 0]);
  /// O primeiro índice de [element] nesta lista.
  /// Pesquisa a lista do índice [start] até o final da lista.
  /// A primeira vez que um objeto `o` é encontrado para que `o == element`,
  /// o índice de `o` é retornado.
  /// ```dart
  /// final notes = <String>['do', 're', 'mi', 're'];
  /// print(notes.indexOf('re')); // 1
  /// final indexWithStart = notes.indexOf('re', 2); // 3
  /// ```
  /// Retorna -1 se [elemento] não for encontrado.
  /// ```dart
  /// final notes = <String>['do', 're', 'mi', 're'];
  /// final index = notes.indexOf('fa'); // -1
  /// ```

//! int indexWhere(bool test(E element), [int start = 0]);
  /// O primeiro índice na lista que satisfaz o [teste] fornecido.
  /// Pesquisa a lista do índice [start] até o final da lista.
  /// A primeira vez que um objeto `o` é encontrado para que `test(o)` seja verdadeiro, o índice de `o` é retornado.
  /// ```dart
  /// final notes = <String>['do', 're', 'mi', 're'];
  /// final first = notes.indexWhere((note) => note.startsWith('r')); // 1
  /// final second = notes.indexWhere((note) => note.startsWith('r'), 2); // 3
  /// ```
  /// Retorna -1 se [element] não for encontrado.
  /// ```dart
  /// final notes = <String>['do', 're', 'mi', 're'];
  /// final index = notes.indexWhere((note) => note.startsWith('k')); // -1
  /// ```

//! int lastIndexWhere(bool test(E element), [int? start]);
  /// O último índice na lista que satisfaz o [teste] fornecido.
  /// Pesquisa a lista do índice [start] a 0.
  /// A primeira vez que um objeto `o` é encontrado para que `test(o)` seja verdadeiro, o índice de `o` é retornado.
  /// Se [start] for omitido, o padrão será o [length] da lista.
  /// ```dart
  /// final notes = <String>['do', 're', 'mi', 're'];
  /// final first = notes.lastIndexWhere((note) => note.startsWith('r')); // 3
  /// final second = notes.lastIndexWhere((note) => note.startsWith('r'), 2); // 1
  /// ```
  /// Retorna -1 se [elemento] não for encontrado.
  /// ```dart
  /// final notes = <String>['do', 're', 'mi', 're'];
  /// final index = notes.lastIndexWhere((note) => note.startsWith('k'));
  /// print(index); // -1
  /// ```

//! int lastIndexOf(E element, [int? start]);
  /// O último índice de [element] nesta lista.
  /// Pesquisa a lista para trás do índice [start] para 0.
  /// A primeira vez que um objeto `o` é encontrado para que `o == element`, o índice de `o` é retornado.
  /// ```dart
  /// final notes = <String>['do', 're', 'mi', 're'];
  /// const startIndex = 2;
  /// final index = notes.lastIndexOf('re', startIndex); // 1
  /// ```
  /// Se [start] não for fornecido, este método pesquisa a partir do final do
  /// Lista.
  /// ```dart
  /// final notes = <String>['do', 're', 'mi', 're'];
  /// final index = notes.lastIndexOf('re'); // 3
  /// ```
  /// Retorna -1 se [elemento] não for encontrado.
  /// ```dart
  /// final notes = <String>['do', 're', 'mi', 're'];
  /// final index = notes.lastIndexOf('fa'); // -1
  /// ```

//! void clear();
  /// Remove todos os objetos desta lista; o comprimento da lista torna-se zero.
  /// A lista deve ser expansível.
  /// ```dart
  /// final numbers = <int>[1, 2, 3];
  /// numbers.clear();
  /// print(numbers.length); // 0
  /// print(numbers); // []
  /// ```

//! void insert(int index, E element);
  /// Insere [element] na posição [index] nesta lista.
  /// Isso aumenta o comprimento da lista em um e desloca todos os objetos no ou após o índice no final da lista.
  /// A lista deve ser expansível.
  /// O valor [index] deve ser não negativo e não maior que [length].
  /// ```dart
  /// final numbers = <int>[1, 2, 3, 4];
  /// const index = 2;
  /// numbers.insert(index, 10);
  /// print(numbers); // [1, 2, 10, 3, 4]
  /// ```

//! void insertAll(int index, Iterable<E> iterable);
  /// Insere todos os objetos de [iterable] na posição [index] nesta lista.
  /// Isso aumenta o comprimento da lista pelo comprimento de [iterable] e desloca todos os objetos posteriores para o final da lista.
  /// A lista deve ser expansível.
  /// O valor [index] deve ser não negativo e não maior que [length].
  /// ```dart
  /// final numbers = <int>[1, 2, 3, 4];
  /// final insertItems = [10, 11];
  /// numbers.insertAll(2, insertItems);
  /// print(numbers); // [1, 2, 10, 11, 3, 4]
  /// ```

//! void setAll(int index, Iterable<E> iterable);
  /// Sobrescreve elementos com os objetos de [iterable].
  /// Os elementos de [iterable] são escritos nesta lista, começando na posição [index].
  /// Esta operação não aumenta o comprimento da lista.
  /// O [índice] deve ser não negativo e não maior que [comprimento].
  /// O [iterable] não deve ter mais elementos do que o que pode caber em [index] para [comprimento].
  /// Se `iterable` for baseado nesta lista, seus valores podem mudar _durante_ o operação `setAll`.
  /// ```dart
  /// final list = <String>['a', 'b', 'c', 'd'];
  /// list.setAll(1, ['bee', 'sea']);
  /// print(list); // [a, bee, sea, d]
  /// ```

//! bool remove(Object? value);
  /// Remove a primeira ocorrência de [valor] desta lista.
  /// Retorna true se [value] estiver na lista, false caso contrário.
  /// A lista deve ser expansível.
  /// ```dart
  /// final parts = <String>['head', 'shoulders', 'knees', 'toes'];
  /// final retVal = parts.remove('head'); // true
  /// print(parts); // [shoulders, knees, toes]
  /// ```
  /// O método não tem efeito se [value] não estiver na lista.
  /// ```dart
  /// final parts = <String>['shoulders', 'knees', 'toes'];
  /// Nota: 'head' já foi removido.
  /// final retVal = parts.remove('head'); // false
  /// print(parts); // [shoulders, knees, toes]
  /// ```

//! E removeAt(int index);
  /// Remove o objeto na posição [index] desta lista.
  /// Este método reduz o comprimento de `this` em um e move todos os objetos posteriores para baixo em uma posição.
  /// Retorna o valor removido.
  /// O [index] deve estar no intervalo `0 ≤ index < length`.
  /// A lista deve ser expansível.
  /// ```dart
  /// final parts = <String>['head', 'shoulder', 'knees', 'toes'];
  /// final retVal = parts.removeAt(2); // knees
  /// print(parts); // [head, shoulder, toes]
  /// ```

//! E removeLast();
  /// Remove e retorna o último objeto nesta lista.
  /// A lista deve ser expansível e não vazia.
  /// ```dart
  /// final parts = <String>['head', 'shoulder', 'knees', 'toes'];
  /// final retVal = parts.removeLast(); // toes
  /// print(parts); // [head, shoulder, knees]
  /// ```

//! void removeWhere(bool test(E element));
  /// Remove todos os objetos desta lista que satisfazem [teste].
  /// Um ​​objeto `o` satisfaz [teste] se `test(o)` for verdadeiro.
  /// ```dart
  /// final numbers = <String>['one', 'two', 'three', 'four'];
  /// numbers.removeWhere((item) => item.length == 3);
  /// print(numbers); // [three, four]
  /// ```
  /// A lista deve ser expansível.

//! void retainWhere(bool test(E element));
  /// Remove todos os objetos desta lista que não satisfazem [teste].
  /// Um ​​objeto `o` satisfeito [teste] se `test(o)` for verdadeiro.
  /// ```dart
  /// final number = <String>['um', 'dois', 'três', 'quatro'];
  /// number.retainWhere((item) => item.length == 3);
  /// print(number); // [um dois]
  /// ```
  /// A lista deve ser expansível.

//! List<E> operator +(List<E> other);
  /// Retorna a concatenação desta lista e [other].
  /// Retorna uma nova lista contendo os elementos desta lista seguidos por os elementos de [other].
  /// O comportamento padrão é retornar uma lista normal de crescimento.
  /// Alguns tipos de lista podem optar por retornar uma lista do mesmo tipo que eles (veja [Uint8List.+]);

//! List<E> sublist(int start, [int? end]);
  /// Retorna uma nova lista contendo os elementos entre [start] e [end].
  /// A nova lista é uma `List<E>` contendo os elementos desta lista em posições maiores ou iguais a [start] e menores que [end] no mesmo
  /// ordem conforme ocorrem nesta lista.
  /// ```dart
  /// final colors = <String>['red', 'green', 'blue', 'orange', 'pink'];
  /// print(colors.sublist(1, 3)); // [green, blue]
  /// ```
  /// Se [end] for omitido, o padrão será o [comprimento] desta lista.
  /// ```dart
  /// final colors = <String>['red', 'green', 'blue', 'orange', 'pink'];
  /// print(colors.sublist(3)); // [orange, pink]
  /// ```
  /// As posições `start` e `end` devem satisfazer as relações
  /// 0 ≤ `início` ≤ `fim` ≤ [comprimento].
  /// Se `end` for igual a `start`, então a lista retornada está vazia.

//! Iterable<E> getRange(int start, int end);
  /// Cria um [Iterable] que itera em um intervalo de elementos.
  /// O iterável retornado itera sobre os elementos desta lista com posições maiores ou iguais a [start] e menores que [end].
  /// O intervalo fornecido, [start] e [end], deve ser válido no momento da chamada.
  /// Um ​​intervalo de [start] a [end] é válido se 0 ≤ `start` ≤ `end` ≤ [length].
  /// Um ​​intervalo vazio (com `end == start`) é válido.
  /// O [Iterable] retornado se comporta como `skip(start).take(end - start)`.
  /// Ou seja, *não* quebra se esta lista mudar de tamanho, apenas
  /// termina mais cedo se chegar mais cedo ao final da lista
  /// (se `end`, ou mesmo `start`, for maior que [comprimento]).
  /// ```dart
  /// final colors = <String>['red', 'green', 'blue', 'orange', 'pink'];
  /// final firstRange = colors.getRange(0, 3);
  /// print(firstRange.join(', ')); // red, green, blue
  /// final secondRange = colors.getRange(2, 5);
  /// print(secondRange.join(', ')); // blue, orange, pink
  /// ```

//! void setRange(int start, int end, Iterable<E> iterable, [int skipCount = 0]);
  /// Escreve alguns elementos de [iterable] em um intervalo desta lista.
  /// Copia os objetos de [iterable], pulando os objetos [skipCount] primeiro, no intervalo de [início], inclusive, até [fim], exclusivo, desta lista.
  /// ```dart
  /// final list1 = <int>[1, 2, 3, 4];
  /// final list2 = <int>[5, 6, 7, 8, 9];
  /// Copia o 4º e 5º itens em list2 como o 2º e 3º itens
  /// da list1.
  /// const skipCount = 3;
  /// list1.setRange(1, 3, list2, skipCount);
  /// print(list1); // [1, 8, 9, 4]
  /// ```
  /// O intervalo fornecido, dado por [start] e [end], deve ser válido.
  /// Um ​​intervalo de [start] a [end] é válido se 0 ≤ `start` ≤ `end` ≤ [length].
  /// Um ​​intervalo vazio (com `end == start`) é válido.
  /// O [iterable] deve ter objetos suficientes para preencher o intervalo de `start` para `end` após pular objetos [skipCount].
  /// Se `iterable` for esta lista, a operação copia corretamente os elementos
  /// originalmente no intervalo de `skipCount` para `skipCount + (end - start)` para o intervalo `start` a `end`, mesmo que os dois intervalos se sobreponham.
  /// Se `iterable` depender desta lista de alguma outra forma, não há garantias

//! void removeRange(int start, int end);
  /// Remove um intervalo de elementos da lista.
  /// Remove os elementos com posições maiores ou iguais a [start] e menor que [end], da lista.
  /// Isso reduz o tamanho da lista em `end - start`.
  /// O intervalo fornecido, dado por [start] e [end], deve ser válido.
  /// Um ​​intervalo de [start] a [end] é válido se 0 ≤ `start` ≤ `end` ≤ [length].
  /// Um ​​intervalo vazio (com `end == start`) é válido.
  /// A lista deve ser expansível.
  /// ```dart
  /// final numbers = <int>[1, 2, 3, 4, 5];
  /// numbers.removeRange(1, 4);
  /// print(numbers); // [1, 5]
  /// ```

//! void fillRange(int start, int end, [E? fillValue]);
  /// Sobrescreve um intervalo de elementos com [fillValue].
  /// Define as posições maiores ou iguais a [start] e menores que [end], para [fillValue].
  /// O intervalo fornecido, dado por [start] e [end], deve ser válido.
  /// Um ​​intervalo de [start] a [end] é válido se 0 ≤ `start` ≤ `end` ≤ [length].
  /// Um ​​intervalo vazio (com `end == start`) é válido.
  /// Se o tipo de elemento não for anulável, o [fillValue] deve ser fornecido e
  /// deve ser não-`null`.
  /// Exemplo:
  /// ```dart
  /// final words = List.filled(5, 'old');
  /// print(words); // [old, old, old, old, old]
  /// words.fillRange(1, 3, 'new');
  /// print(words); // [old, new, new, old, old]
  /// ```

  //! void replaceRange(int start, int end, Iterable<E> replacements);
  /// Substitui um intervalo de elementos pelos elementos de [replacements].
  /// Remove os objetos no intervalo de [start] a [end], então insere os elementos de [replacements] em [start].
  /// ```dart
  /// final numbers = <int>[1, 2, 3, 4, 5];
  /// final replacements = [6, 7];
  /// numbers.replaceRange(1, 4, replacements);
  /// print(numbers); // [1, 6, 7, 5]
  /// ```
  /// O intervalo fornecido, dado por [start] e [end], deve ser válido.
  /// Um ​​intervalo de [start] a [end] é válido se 0 ≤ `start` ≤ `end` ≤ [length].
  /// Um ​​intervalo vazio (com `end == start`) é válido.
  /// A operação `list.replaceRange(início, fim, substituições)` é aproximadamente equivalente a:
  /// ```dart
  /// final numbers = <int>[1, 2, 3, 4, 5];
  /// numbers.removeRange(1, 4);
  /// final replacements = [6, 7];
  /// numbers.insertAll(1, replacements);
  /// print(numbers); // [1, 6, 7, 5]
  /// ```
  /// mas pode ser mais eficiente.
  /// A lista deve ser expansível.
  /// Este método não funciona em listas de tamanho fixo, mesmo quando [substituições]
  /// tem o mesmo número de elementos que o intervalo substituído. Nesse caso use
  /// [setRange] em vez disso.

//! Map<int, E> asMap();
  /// Uma visão [Mapa] não modificável desta lista.
  /// O mapa usa os índices desta lista como chaves e os objetos correspondentes
  /// como valores. O `Map.keys` [Iterable] itera os índices desta lista
  /// em ordem numérica.
  /// ```dart
  /// var words = <String>['fee', 'fi', 'fo', 'fum'];
  /// var map = words.asMap();  // {0: fee, 1: fi, 2: fo, 3: fum}
  /// map.keys.toList(); // [0, 1, 2, 3]
  /// ```

//! bool operator ==(Object other);
  /// Se esta lista é igual a [outro].
  /// Listas são, por padrão, apenas iguais a si mesmas.
  /// Mesmo que [other] também seja uma lista, a comparação de igualdade
  /// não compara os elementos das duas listas.
}
