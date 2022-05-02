void main() {
//! OBS set:
  /// Uma coleção de objetos em que cada objeto pode ocorrer apenas uma vez.(não pode ter repetidos)
  /// Ou seja, para cada objeto do tipo elemento, o objeto é considerado estar no conjunto, ou não estar no conjunto.
  /// Implementações de conjuntos podem considerar alguns elementos indistinguíveis.
  /// Esses elementos são tratados como sendo os mesmos para qualquer operação no conjunto.
  /// A implementação padrão de [Set], [LinkedHashSet], considera objetos indistinguíveis se forem iguais em relação a [Object.==] e [Object.hashCode].
  /// Iterar sobre elementos de um conjunto pode ser desordenado ou ordenado de alguma forma.
  /// Exemplos:
  /// Um [HashSet] não é ordenado, o que significa que sua ordem de iteração é não especificado,
  /// [LinkedHashSet] itera na ordem de inserção de seus elementos e um conjunto classificado como [SplayTreeSet] itera os elementos em ordem de classificação.
  /// Geralmente não é permitido modificar o conjunto (adicionar ou remover elementos) enquanto uma operação no aparelho está sendo executada, por exemplo, durante uma chamada para [forEach] ou [containsAll].
  /// Também não é permitido modificar o conjunto enquanto iterando o próprio conjunto ou qualquer [Iterable] que seja apoiado pelo conjunto, como os retornados por métodos como [where] e [map].
  /// Geralmente não é permitido modificar a igualdade dos elementos (e, portanto, não seu hashcode) enquanto eles estão no conjunto.
  /// Alguns subtipos especializados podem ser mais permissivo, nesse caso eles devem documentar esse comportamento.

//! Set<E> toSet();
  /// Cria um Set com os mesmos elementos e comportamento deste `Set`.
  /// O conjunto retornado se comporta da mesma forma que este conjunto no que diz respeito à adição e remoção de elementos.
  /// Inicialmente contém os mesmos elementos.
  /// Se este conjunto especifica uma ordenação dos elementos,
  /// o conjunto retornado terá a mesma ordem.

//! void clear();
  /// Resumindo: remove todos os elementos do conjunto.
  /// >>>> Dart example <<<<<
  /// final characters = <String>{'A', 'B', 'C'};
  /// characters.clear();
  /// print(characters)
  /// resultado do print -> {}
  /// >>>> ========== <<<<<

//! Set<E> difference(Set<Object?> other);
  /// Cria um novo conjunto com os elementos deste que não estão em [other].
  /// Ou seja, o conjunto retornado contém todos os elementos deste [Set] que não são elementos de [other] de acordo com `other.contains`.
  /// Resumindo: ele vai dizer o que tem de diferente entre dois set's
  /// >>>> Dart example <<<<<
  /// final characters1 = <String>{'A', 'B', 'C'};
  /// final characters2 = <String>{'A', 'E', 'F'};
  /// final differenceSet1 = characters1.difference(characters2);
  /// print(differenceSet1); // {B, C}
  /// final differenceSet2 = characters2.difference(characters1);
  /// print(differenceSet2); // {E, F}
  /// >>>> ========== <<<<<

//! Set<E> union(Set<E> other);
  /// Cria um novo conjunto que contém todos os elementos deste conjunto e [other].
  /// Ou seja, o conjunto retornado contém todos os elementos deste [Set] e todos os elementos de [other].
  /// Resumindo: ele vai unir os dois sets (cuidado se tiver nomes ou outra coisa repitida porque ele nao vai atribuir repetições)
  /// >>>> Dart example <<<<<
  /// final characters1 = <String>{'A', 'B', 'C'};
  /// final characters2 = <String>{'A', 'E', 'F'};
  /// final unionSet1 = characters1.union(characters2);
  /// print(unionSet1); // {A, B, C, E, F}
  /// final unionSet2 = characters2.union(characters1);
  /// print(unionSet2); // {A, E, F, B, C}
  /// >>>> ========== <<<<<

//! Set<E> intersection(Set<Object?> other);
  /// Cria um novo conjunto que é a interseção entre este conjunto e [other].
  /// Ou seja, o conjunto retornado contém todos os elementos deste [Set] que também são elementos de [other] de acordo com `other.contains`.
  /// Resumindo: ele vai printar somente o que for igual entre dois sets
  /// >>>> Dart example <<<<<
  /// final characters1 = <String>{'A', 'B', 'C'};
  /// final characters2 = <String>{'A', 'E', 'F'};
  /// final unionSet = characters1.intersection(characters2);
  /// print(unionSet); // {A}
  /// >>>> ========== <<<<<

//! bool containsAll(Iterable<Object?> other);
  /// Se este conjunto contém todos os elementos de [other].
  /// Resumindo: vai ver se no set contém algo que especificarmos e vai retorna um boleano
  /// >>>> Dart example <<<<<
  /// final characters = <String>{'A', 'B', 'C'};
  /// final containsAB = characters.containsAll({'A', 'B'});
  /// print(containsAB); // true
  /// final containsAD = characters.containsAll({'A', 'D'});
  /// print(containsAD); // false
  /// >>>> ========== <<<<<

//! void retainWhere(bool test(E element));
  /// Remove todos os elementos deste conjunto que não satisfazem [test].
  /// Resumindo: vai deixar somente os elementos que queremos
  /// >>>> Dart example <<<<<
  /// final characters = <String>{'A', 'B', 'C'};
  /// characters.retainWhere(
  ///     (element) => element.startsWith('B') || element.startsWith('C'));
  /// print(characters); // {B, C}
  /// >>>> ========== <<<<<

//! void removeWhere(bool test(E element));
  /// Remove todos os elementos deste conjunto que satisfazem [test].
  /// Resumindo: vai remover os elementos que especificarmos
  /// >>>> Dart example <<<<<
  /// final characters = <String>{'A', 'B', 'C'};
  /// characters.removeWhere((element) => element.startsWith('B'));
  /// print(characters); // {A, C}
  /// >>>> ========== <<<<<

//! void retainAll(Iterable<Object?> elements);
  /// Remove todos os elementos deste conjunto que não são elementos em [elements].
  /// Verifica para cada elemento de [elements] se existe um elemento neste set que é igual a ele (de acordo com `this.contains`),
  /// e se sim, o elemento igual neste conjunto é retido, e elementos que não são iguais a qualquer elemento em [elements] são removidos.
  /// Resumindo: vamos especificar alguns elementos e o que não estiver espeicificado não ter no set ele vai remover
  /// >>>> Dart example <<<<<
  /// final characters = <String>{'A', 'B', 'C'};
  /// characters.retainAll({'A', 'B', 'X'});
  /// print(characters); // {A, B}
  /// >>>> ========== <<<<<

//! void removeAll(Iterable<Object?> elements);
  /// Remove cada elemento de [elements] deste conjunto.
  /// >>>> Dart example <<<<<
  /// final characters = <String>{'A', 'B', 'C'};
  /// characters.removeAll({'A', 'B', 'X'});
  /// print(characters); // {C}
  /// >>>> ========== <<<<<

//! E? lookup(Object? object);
  /// Se um objeto igual a [object] estiver no conjunto, retorne-o.
  /// Verifica se [objeto] está no conjunto, como [contains], e se sim, retorna o objeto no conjunto, caso contrário retorna `null`.
  /// Se a relação de igualdade usada pelo conjunto não for identidade, então o objeto retornado pode não ser *idêntico* a [objeto].
  /// Algumas implementações de conjuntos podem não ser capazes de implementar este método.
  /// Se o método [contains] for calculado, em vez de ser baseado em uma instância de objeto real,
  /// então pode não haver uma instância de objeto específica representando o define o elemento.
  /// Resumindo: Vai verificar se no set contem algo que especificamos, e ao invés de retornar um boleano(como no containsAll) ele retorna o proprio objeto ou null
  /// >>>> Dart example <<<<<
  /// final characters = <String>{'A', 'B', 'C'};
  /// final containsB = characters.lookup('B');
  /// print(containsB); // B
  /// final containsD = characters.lookup('D');
  /// print(containsD); // null
  /// >>>> ========== <<<<<

//! bool remove(Object? value);
  /// Remove [value] do conjunto set.
  /// Retorna `true` se [value] estiver no conjunto, e `false` se não estiver.
  /// O método não tem efeito se [value] não estiver no conjunto.
  /// Resumindo: vai remover um elemento que especificarmos e retornar um boleano
  /// >>>> Dart example <<<<<
  /// final characters = <String>{'A', 'B', 'C'};
  /// final didRemoveB = characters.remove('B'); // true
  /// final didRemoveD = characters.remove('D'); // false
  /// print(characters); // {A, C}
  /// >>>> ========== <<<<<

//! void addAll(Iterable<E> elements);
  /// Adiciona todos os [elements] a este conjunto.
  /// Equivalente a adicionar cada elemento em [elements] usando [add], mas algumas coleções podem otimizá-lo.
  /// Resumindo: vai adicionar elementos que especificarmos no addAll dentro do set
  /// >>>> Dart example <<<<<
  /// final characters = <String>{'A', 'B'};
  /// characters.addAll({'A', 'B', 'C'});
  /// print(characters); // {A, B, C}
  /// >>>> ========== <<<<<

//! bool add(E value);
  /// Adiciona [value] ao conjunto.
  /// Retorna `true` se [value] (ou um value igual) ainda não estava no conjunto.
  /// Caso contrário, retorna `false` e ​​o conjunto não é alterado.
  /// Resumindo: vai adicionar um valor ao set, que não seja igual ao que esteja dentro dele
  /// >>>> Dart example <<<<<
  /// final dateTimes = <DateTime>{};
  /// final time1 = DateTime.fromMillisecondsSinceEpoch(0);
  /// final time2 = DateTime.fromMillisecondsSinceEpoch(0);
  /// time1 e time2 são iguais, mas não idênticos.
  /// repare no exemplo:
  /// assert(time1 == time2);
  /// assert(!identical(time1, time2));
  /// final time1Added = dateTimes.add(time1);
  /// print(time1Added); // true
  /// Um ​​valor igual a time2 já existe no conjunto, e a chamada para add não altera o conjunto.
  /// repare no exemplo
  /// final time2Added = dateTimes.add(time2);
  /// print(time2Added); // false
  /// print(dateTimes); // {1970-01-01 02:00:00.000}
  /// assert(dateTimes.length == 1);
  /// assert(identical(time1, dateTimes.first));
  /// print(dateTimes.length);
  /// >>>> ========== <<<<<

//! bool contains(Object? value);
  /// Se [value] está no conjunto.
  /// Resumindo: vai verificar se existe um elemento que especificarmos e retornar um boleano
  /// >>>> Dart example <<<<<
  /// final characters = <String>{'A', 'B', 'C'};
  /// final containsB = characters.contains('B'); // true
  /// final containsD = characters.contains('D'); // false
  /// >>>> ========== <<<<<

//! Iterator<E> get iterator;
  /// Um ​​iterador que itera sobre os elementos deste conjunto.
  /// A ordem de iteração é definida pela implementação individual do `Set`, mas deve ser consistente entre as alterações no conjunto.

//! Set<R> cast<R>()
  /// Fornece uma visão deste conjunto como um conjunto de instâncias [R].
  /// Se este conjunto contiver apenas instâncias de [R], todas as operações de leitura
  /// funcionará corretamente. Se alguma operação tentar acessar um elemento que não é uma instância de [R], o acesso será lançado.
  /// Elementos adicionados ao conjunto (por exemplo, usando [add] ou [addAll]) devem ser instâncias de [R] para serem argumentos válidos para a função de adição,
  /// e eles devem ser instâncias de [E] também para serem aceitos por este conjunto também.
  /// Métodos que aceitam um ou mais `Object?` como argumento, como [contém], [remove] e [removeAll],
  /// passará o argumento diretamente para o método deste conjunto sem nenhuma verificação.
  /// Isso significa que você pode fazer `setOfStrings.cast<int>().remove("a")` com sucesso, mesmo que pareça não ter nenhum efeito.

//! Set<T> castFrom<S, T>(Set<S> source, {Set<R> Function<R>()? newSet}) => CastSet<S, T>(source, newSet);
  /// Adapta [source] para ser um `Set<T>`.
  /// Se [newSet] for fornecido, ele será usado para criar os novos conjuntos retornados por [toSet], [union], e também é usado para [intersection] e [difference].
  /// Se [newSet] for omitido, o padrão é criar um novo conjunto usando o construtor padrão [Set] e [intersection] e [difference]
  /// retorna uma versão adaptada de chamar o mesmo método na fonte.
  /// Sempre que o conjunto produzir um elemento que não seja um [T], o acesso ao elemento será lançado.
  /// Sempre que um valor [T] for tentado adicionado ao conjunto adaptado, a loja lançará a menos que o valor também seja uma instância de [S].
  /// Se todos os elementos acessados ​​de [source] são realmente instâncias de [T], e se todos os elementos adicionados ao conjunto retornado forem realmente instâncias de [S],
  /// então o conjunto retornado pode ser usado como um `Set<T>`.
  /// Métodos que aceitam um ou mais `Object?` como argumento, como [contém], [remove] e [removeAll],
  /// passará o argumento diretamente para o método deste conjunto sem nenhuma verificação.

//! Set.unmodifiable(Iterable<E> elements) => UnmodifiableSetView<E>(<E>{...elements});
  /// Cria um [Set] não modificável de [elements].
  /// O novo conjunto se comporta como o resultado de [Set.of], exceto que o conjunto retornado por este construtor não é modificável.
  /// Resumindo: basicamente coloca um const nesse set
  /// >>>> Dart example <<<<<
  /// final characters = <String>{'A', 'B', 'C'};
  /// final unmodifiableSet = Set.unmodifiable(characters);
  /// >>>> ========== <<<<<

//! Set.of(Iterable<E> elements) = LinkedHashSet<E>.of;
  /// Cria um [Set] de [elements].
  /// O [Set] criado é um [LinkedHashSet]. Para tanto, considera elementos que
  /// são iguais (usando [operator ==]) para serem indistinguíveis e exigem que eles
  /// O conjunto é equivalente a um criado por
  /// `LinkedHashSet<E>.of(elements)`.
  /// >>>> Dart example <<<<<
  /// final baseSet = <int>{1, 2, 3};
  /// final setOf = Set<num>.of(baseSet);
  /// print(setOf); // {1, 2, 3}
  /// >>>> ========== <<<<<

//! factory Set.from(Iterable elements) = LinkedHashSet<E>.from;
  /// Cria um [Set] que contém todos os [elements].
  /// Todos os [elementos] devem ser instâncias de [E].
  /// O próprio iterável `elements` pode ter qualquer tipo,
  /// então este construtor pode ser usado para fazer downcast de um `Set`, por exemplo como:
  /// Set<SuperType> superSet = ...;
  /// Set<SubType> subSet =
  /// Set<SubType>.from(superSet.where((e) => e é SubType));
  /// O [Set] criado é um [LinkedHashSet]. Para tanto, considera elementos que são iguais (usando [operator ==]) para serem indistinguíveis e exigem que eles
  /// tem uma implementação compatível de [Object.hashCode].
  /// O conjunto é equivalente a um criado por
  /// `LinkedHashSet<E>.from(elements)`.
  /// >>>> Dart example <<<<<
  /// final numbers = <num>{10, 20, 30};
  /// final setFrom = Set<int>.from(numbers);
  /// print(setFrom); // {10, 20, 30}
  /// >>>> ========== <<<<<

//! Set.identity() = LinkedHashSet<E>.identity;
  /// Cria uma identidade vazia [Set].
  /// O [Set] criado é um [LinkedHashSet] que usa identidade como igualdade
  /// relação.
  /// O conjunto é equivalente a um criado por `LinkedHashSet<E>.identity()`.

//! Set() = LinkedHashSet<E>;
  /// Cria um [Set] vazio.
  /// O [Set] criado é um [LinkedHashSet] simples.
  /// Como tal, considera os elementos que são iguais (usando [operator ==]) como
  /// indistinguível, e exige que eles tenham um
  /// implementação de [Object.hashCode].
  /// O conjunto é equivalente a um criado por `LinkedHashSet<E>()`.
}
