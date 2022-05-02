void main() {
//! Obs Map:
  /// Uma coleção de pares chave/valor, dos quais você recupera um valor usando sua chave associada.
  /// Existe um número finito de chaves no mapa, e cada chave tem exatamente um valor associado a ela.
  /// Mapas e suas chaves e valores podem ser iterados.
  /// A ordem de iteração é definida pelo tipo individual de mapa.
  /// Exemplos:
  /// * O [HashMap] simples não é ordenado (nenhuma ordem é garantida),
  /// * o [LinkedHashMap] itera na ordem de inserção da chave,
  /// * e um mapa ordenado como [SplayTreeMap] itera as chaves em ordem ordenada.
  /// Geralmente não é permitido modificar o mapa (adicionar ou remover chaves) enquanto
  /// uma operação está sendo executada no mapa, por exemplo em funções chamadas durante uma chamada [forEach] ou [putIfAbsent].
  /// Modificando o mapa enquanto iteramos as chaves ou valores também pode quebrar a iteração.
  /// Geralmente não é permitido modificar a igualdade de chaves
  /// E, portanto, não seu hashcode enquanto eles estão no mapa.
  /// Alguns subtipos especializados podem ser mais permissivo, nesse caso eles devem documentar esse comportamento.

//! Map()
  /// Cria um [LinkedHashMap] vazio.
  /// Este construtor é equivalente ao literal de mapa não const `<K,V>{}`.
  /// Um ​​`LinkedHashMap` requer as chaves para implementar `operator==` e `hashCode`.
  /// Itera na ordem de inserção da chave.

//! Map.from(Map other) = LinkedHashMap<K, V>.from;
  /// Cria um [LinkedHashMap] com as mesmas chaves e valores que [other].
  /// As chaves devem ser todas instâncias de [K] e os valores de [V].
  /// O próprio mapa [other] pode ter qualquer tipo, diferente de [Map.of].
  /// Os tipos de chave e valor são verificados (e podem falhar) em tempo de execução.
  /// Prefira usar [Map.of] quando possível, e use apenas `Map.from` para criar um novo mapa com tipos mais precisos que o original,
  /// e quando se sabe que todas as chaves e valores possuem aqueles tipos mais precisos.
  /// Um ​​`LinkedHashMap` requer as chaves para implementar `operator==` e `hashCode`. Itera na ordem de inserção da chave.
  /// ```dart
  /// final planets = <num, String>{1: 'Mercury', 2: 'Venus', 3: 'Earth', 4: 'Mars'};
  /// final mapFrom = Map<int, String>.from(planets);
  /// print(mapFrom); // {1: Mercury, 2: Venus, 3: Earth, 4: Mars}

//! Map.of(Map<K, V> other) = LinkedHashMap<K, V>.of;
  /// Cria um [LinkedHashMap] com as mesmas chaves e valores que [other].
  /// Um ​​`LinkedHashMap` requer as chaves para implementar`operator==` e `hashCode`, e permite `null` como chave.
  /// Itera na ordem de inserção da chave.
  /// ```dart
  /// final planets = <int, String>{1: 'Mercury', 2: 'Venus', 3: 'Earth'};
  /// final mapOf = Map<num, String>.of(planets);
  /// print(mapOf); // {1: Mercury, 2: Venus, 3: Earth}
  /// ```,

//! Map.unmodifiable(Map<dynamic, dynamic> other);
  /// Cria um mapa baseado em hash não modificável contendo as entradas de [other].
  /// As chaves devem ser todas instâncias de [K] e os valores de [V].
  /// O próprio mapa [other] pode ter qualquer tipo.
  /// O mapa requer as chaves para implementar compatível `operator==` e `hashCode`.
  /// O mapa criado itera chaves em uma ordem fixa, preservando a ordem fornecida por [other].
  /// O mapa resultante se comporta como o resultado de [Map.from], exceto que o mapa retornado por este construtor não é modificável.
  /// ```dart
  /// final planets = <int, String>{1: 'Mercury', 2: 'Venus', 3: 'Earth'};
  /// final unmodifiableMap = Map.unmodifiable(planets);
  /// unmodifiableMap[4] = 'Mars'; // Throws
  /// ```

//! Map.identity() = LinkedHashMap<K, V>.identity;
  /// Cria um mapa de identidade com a implementação padrão, [LinkedHashMap].
  /// Um ​​mapa de identidade usa [idêntico] para igualdade e [identityHashCode] para códigos hash de chaves em vez do intrínseco [Object.==] e
  /// [Object.hashCode] das chaves.
  /// O mapa itera na ordem de inserção da chave.

//!  Map.fromIterable(Iterable iterable,{K key(dynamic element)?, V value(dynamic element)?}) = LinkedHashMap<K, V>.fromIterable;
  /// Cria uma instância Map na qual as chaves e os valores são calculados a partir do [iterável].
  /// Para cada elemento do [iterável], um par chave/valor é calculado aplicando [key] e [value] respectivamente ao elemento do iterável.
  /// Equivalente ao literal do mapa:
  /// ```dart
  /// <K, V>{for (var v in iterable) key(v): value(v)}
  /// ```
  /// O literal é geralmente preferível porque permite para uma digitação mais precisa.
  /// O exemplo abaixo cria um novo mapa de uma lista de inteiros.
  /// As chaves do `map` são os valores da `list` convertidos em strings, e os valores do `map` são os quadrados dos valores da `list`:
  /// Resumindo: ele pega uma lista e coloca ela como chave e o valor ele espelha a lista
  /// ```dart
  /// final numbers = <int>[1, 2, 3];
  /// final map = Map<String, int>.fromIterable(numbers,
  ///     key: (item) => item.toString(),
  ///     value: (item) => item * item);
  /// print(map); // {1: 1, 2: 4, 3: 9}
  /// ```
  /// Se nenhum valor for especificado para [chave] e [valor], o padrão é a função de identidade.
  /// Nesse caso, o elemento iterável deve ser atribuível ao tipo de chave ou valor do mapa criado.
  /// No exemplo a seguir, as chaves e os valores correspondentes de `map` são os valores `list` diretamente:
  /// ```dart
  /// final numbers = <int>[1, 2, 3];
  /// final map = Map.fromIterable(numbers);
  /// print(map); // {1: 1, 2: 2, 3: 3}
  /// ```
  /// As chaves computadas pela fonte [iterable] não precisam ser exclusivas.
  /// A última ocorrência de uma chave irá sobrescrever o valor de qualquer ocorrência anterior.
  /// O mapa criado é um [LinkedHashMap].
  /// Um ​​`LinkedHashMap` requer as chaves para implementar `operator==` e `hashCode`.
  /// Itera na ordem de inserção da chave.

//!  Map.fromIterables(Iterable<K> keys, Iterable<V> values) = LinkedHashMap<K, V>.fromIterables;
  /// Cria um mapa associando as [chaves] fornecidas aos [valores].
  /// A construção do mapa itera sobre [keys] e [values] simultaneamente, e adiciona uma entrada ao mapa para cada par de chave e valor.
  /// Resumindo ele junta um set e um list e cria um map
  /// conforme exemplo abaixo set sera a key e list sera o value
  /// ```dart
  /// final rings = <bool>[false, false, true, true];
  /// final planets = <String>{'Earth', 'Mars', 'Jupiter', 'Saturn'};
  /// final map = Map<String, bool>.fromIterables(planets, rings);
  /// print(map); // {Earth: false, Mars: false, Jupiter: true, Saturn: true}
  /// ```
  /// Se [keys] contiver o mesmo objeto várias vezes, o valor da última ocorrência substitui qualquer valor anterior.
  /// Os dois [Iterable]s devem ter o mesmo comprimento.
  /// O mapa criado é um [LinkedHashMap].
  /// Um ​​`LinkedHashMap` requer as chaves para implementar `operator==` e `hashCode`.
  /// Itera na ordem de inserção da chave.

//! Map<K2, V2> castFrom<K, V, K2, V2>(Map<K, V> source) => CastMap<K, V, K2, V2>(source);
  /// Adapta [source] para ser um `Map<K2, V2>`.
  /// Sempre que o conjunto produzir uma chave ou valor que não seja um [K2] ou [V2], o acesso será lançado.
  /// Sempre que a tecla [K2] ou o valor [V2] for tentado adicionado ao mapa adaptado,
  /// a loja lançará a menos que a chave também seja uma instância de [K] e o valor também é uma instância de [V].
  /// Se todas as entradas acessadas de [source] tiverem chaves [K2] e valores [V2] e se todas as entradas adicionadas ao mapa retornado tiverem chaves [K] e valores [V]],
  /// então o mapa retornado pode ser usado como um `Map<K2, V2>`.
  /// Métodos que aceitam `Object?` como argumento, como [containsKey], [remove] e [operator []],
  /// passará o argumento diretamente para o método deste mapa sem nenhuma verificação.

//! Map.fromEntries(Iterable<MapEntry<K, V>> entries) => <K, V>{}..addEntries(entries);
  /// Cria um novo mapa e adiciona todas as entradas.
  /// Retorna um novo `Map<K, V>` onde todas as entradas de [entries] foram adicionados em ordem de iteração.
  /// Se várias [entradas] tiverem a mesma chave, ocorrências posteriores substituem o valor das anteriores.
  /// Equivalente ao literal do mapa:
  /// ```dart
  /// <K, V>{for (var e in entries) e.key: e.value}
  /// ```
  /// Example:
  /// ```dart
  /// final moonCount = <String, int>{'Mercury': 0, 'Venus': 0, 'Earth': 1,
  ///   'Mars': 2, 'Jupiter': 79, 'Saturn': 82, 'Uranus': 27, 'Neptune': 14};
  /// final map = Map.fromEntries(moonCount.entries);
  /// ```

//! Map<RK, RV> cast<RK, RV>();
  /// Fornece uma visão deste mapa como tendo chaves [RK] e instâncias [RV], se necessário.
  /// Se este mapa já é um `Map<RK, RV>`, ele é retornado inalterado.
  /// Se este conjunto contém apenas chaves do tipo [RK] e valores do tipo [RV], todas as operações de leitura funcionarão corretamente.
  /// Se qualquer operação expõe uma chave não-[RK] ou um valor não-[RV], a operação lançará em vez disso.
  /// As entradas adicionadas ao mapa devem ser válidas para um `Map<K, V>` e um `Mapa<RK, RV>`.
  /// Métodos que aceitam `Object?` como argumento, como [containsKey], [remove] e [operator []],
  /// passará o argumento diretamente para o método deste mapa sem nenhuma verificação.
  /// Isso significa que você pode fazer `mapWithStringKeys.cast<int,int>().remove("a")` com sucesso, mesmo que pareça não ter nenhum efeito.

//! bool containsValue(Object? value);
  /// Se este mapa contém o [valor].
  /// Retorna true se algum dos valores no mapa for igual a `value` de acordo com o operador `==`
  /// ```dart
  /// final moonCount = <String, int>{'Mercury': 0, 'Venus': 0, 'Earth': 1,
  ///   'Mars': 2, 'Jupiter': 79, 'Saturn': 82, 'Uranus': 27, 'Neptune': 14 };
  /// final moons3 = moonCount.containsValue(3); // false
  /// final moons82 = moonCount.containsValue(82); // true
  /// ```

//! bool containsKey(Object? key);
  /// Se este mapa contém a [chave].
  /// Retorna true se alguma das chaves no mapa for igual a `key` de acordo com a igualdade usada pelo mapa.
  /// ```dart
  /// final moonCount = <String, int>{'Mercury': 0, 'Venus': 0, 'Earth': 1,
  ///   'Mars': 2, 'Jupiter': 79, 'Saturn': 82, 'Uranus': 27, 'Neptune': 14 };
  /// final containsUranus = moonCount.containsKey('Uranus'); // true
  /// final containsPluto = moonCount.containsKey('Pluto'); // false
  /// ```

//! V? operator [](Object? key);
  /// O valor para o dado [key], ou `null` se [key] não estiver no mapa.
  /// Alguns mapas permitem `null` como valor.
  /// Para esses mapas, uma pesquisa usando este operador não pode distinguir entre um
  /// a chave não está no mapa, e a chave está lá com um valor `null`.
  /// Métodos como [containsKey] ou [putIfAbsent] podem ser usados ​​se a distinção é importante.

//! void operator []=(K key, V value);
  /// Associa a [chave] ao [valor].
  /// Se a chave já estava no mapa, seu valor associado é alterado.
  /// Caso contrário, o par chave/valor é adicionado ao mapa.

//! Iterable<MapEntry<K, V>> get entries;
  /// As entradas do mapa de [this].

//! Map<K2, V2> map<K2, V2>(MapEntry<K2, V2> convert(K key, V value));
  /// Retorna um novo mapa onde todas as entradas deste mapa são transformadas por
  /// a função [convert] fornecida.

//! void addEntries(Iterable<MapEntry<K, V>> newEntries);
  /// Adiciona todos os pares chave/valor de [newEntries] a este mapa.
  /// Se uma chave de [newEntries] já estiver neste mapa, o valor correspondente é sobrescrito.
  /// A operação é equivalente a fazer `this[entry.key] = entry.value` para cada [MapEntry] do iterável.
  /// ```dart
  /// final planets = <int, String>{1: 'Mercury', 2: 'Venus',
  ///   3: 'Earth', 4: 'Mars'};
  /// final gasGiants = <int, String>{5: 'Jupiter', 6: 'Saturn'};
  /// final iceGiants = <int, String>{7: 'Uranus', 8: 'Neptune'};
  /// planets.addEntries(gasGiants.entries);
  /// planets.addEntries(iceGiants.entries);
  /// print(planets);
  ///  {1: Mercury, 2: Venus, 3: Earth, 4: Mars, 5: Jupiter, 6: Saturn, 7: Uranus, 8: Neptune}
  /// ```

//! V update(K key, V update(V value), {V ifAbsent()?});
  /// Atualiza o valor para a [chave] fornecida.
  /// Retorna o novo valor associado à chave.
  /// Se a chave estiver presente, invoca [update] com o valor atual e armazena o novo valor no mapa.
  /// Se a chave não estiver presente e [ifAbsent] for fornecido, chama [ifAbsent]
  /// e adiciona a chave com o valor retornado ao mapa.
  /// Se a chave não estiver presente, [ifAbsent] deve ser fornecido.
  /// ```dart
  /// final planetsFromSun = <int, String>{1: 'Mercury', 2: 'unknown', 3: 'Earth'};
  /// Update value for known key value 2.
  /// planetsFromSun.update(2, (value) => 'Venus');
  /// print(planetsFromSun); // {1: Mercury, 2: Venus, 3: Earth}
  /// final largestPlanets = <int, String>{1: 'Jupiter', 2: 'Saturn', 3: 'Neptune'};
  /// Key value 8 is missing from list, add it using [ifAbsent].
  /// largestPlanets.update(8, (value) => 'New', ifAbsent: () => 'Mercury');
  /// print(largestPlanets); // {1: Jupiter, 2: Saturn, 3: Neptune, 8: Mercury}
  /// ```

//! void updateAll(V update(K key, V value));
  /// Atualiza todos os valores.
  /// Itera sobre todas as entradas no mapa e as atualiza com o resultado de invocar [update].
  /// ```dart
  /// final terrestrial = <int, String>{1: 'Mercury', 2: 'Venus', 3: 'Earth'};
  /// terrestrial.updateAll((key, value) => value.toUpperCase());
  /// print(terrestrial); // {1: MERCURY, 2: VENUS, 3: EARTH}
  /// ```

//! void removeWhere(bool test(K key, V value));
  /// Remove todas as entradas deste mapa que satisfazem o dado [teste].
  /// ```dart
  /// final terrestrial = <int, String>{1: 'Mercury', 2: 'Venus', 3: 'Earth'};
  /// terrestrial.removeWhere((key, value) => value.startsWith('E'));
  /// print(terrestrial); // {1: Mercury, 2: Venus}
  /// ```

//! V putIfAbsent(K key, V ifAbsent());
  /// Procure o valor de [key], ou adicione uma nova entrada se não estiver lá.
  /// Retorna o valor associado a [key], se houver.
  /// Caso contrário chama [ifAbsent] para obter um novo valor, associa [key] a esse valor e, em seguida, retorna o novo valor.
  /// ```dart
  /// final diameters = <num, String>{1.0: 'Earth'};
  /// final otherDiameters = <double, String>{0.383: 'Mercury', 0.949: 'Venus'};
  /// for (final item in otherDiameters.entries) {
  ///   diameters.putIfAbsent(item.key, () => item.value);
  /// }
  /// print(diameters); // {1.0: Earth, 0.383: Mercury, 0.949: Venus}
  ///
  /// Se a chave já existir, o valor atual é retornado.
  /// final result = diameters.putIfAbsent(0.383, () => 'Random');
  /// print(result); // Mercury
  /// print(diameters); // {1.0: Earth, 0.383: Mercury, 0.949: Venus}
  /// ```
  /// Chamar [ifAbsent] não deve adicionar ou remover chaves do mapa.

//! void addAll(Map<K, V> other);
  /// Adiciona todos os pares chave/valor de [outro] a este mapa.
  /// Se uma chave de [other] já estiver neste mapa, seu valor será sobrescrito.
  /// A operação é equivalente a fazer `this[key] = value` para cada chave
  /// e valor associado em other. Ele itera sobre [outro], que deve portanto não muda durante a iteração.
  /// ```dart
  /// final planets = <int, String>{1: 'Mercury', 2: 'Earth'};
  /// planets.addAll({5: 'Jupiter', 6: 'Saturn'});
  /// print(planets); // {1: Mercury, 2: Earth, 5: Jupiter, 6: Saturn}
  /// ```

//! V? remove(Object? key);
  /// Remove [key] e seu valor associado, se presente, do mapa.
  /// Retorna o valor associado a `key` antes de ser removido.
  /// Retorna `null` se `key` não estava no mapa.
  /// Note que alguns mapas permitem `null` como valor,
  /// então um valor `null` retornado nem sempre significa que a chave estava ausente.
  /// ```dart
  /// final terrestrial = <int, String>{1: 'Mercury', 2: 'Venus', 3: 'Earth'};
  /// final removedValue = terrestrial.remove(2); // Venus
  /// print(terrestrial); // {1: Mercury, 3: Earth}
  /// ```

//! void clear();
  /// Remove todas as entradas do mapa.
  /// Depois disso, o mapa está vazio.
  /// ```dart
  /// final planets = <int, String>{1: 'Mercury', 2: 'Venus', 3: 'Earth'};
  /// planets.clear(); // {}
  /// ```

//! void forEach(void action(K key, V value));
  /// Aplica [action] a cada par chave/valor do mapa.
  /// Chamar `action` não deve adicionar ou remover chaves do mapa.
  /// ```dart
  /// final planetsByMass = <num, String>{0.81: 'Venus', 1: 'Earth',
  ///   0.11: 'Mars', 17.15: 'Neptune'};
  ///
  /// planetsByMass.forEach((key, value) {
  ///   print('$key: $value');
  ///    0.81: Venus
  ///    1: Earth
  ///    0.11: Mars
  ///    17.15: Neptune
  /// });
  /// ```

//! Iterable<K> get keys;
  /// As chaves de [this].
  /// O iterável retornado tem operações eficientes de `length` e `contains`,
  /// com base em [length] e [containsKey] do mapa.
  /// A ordem de iteração é definida pela implementação individual do `Map`,
  /// mas deve ser consistente entre as alterações no mapa.
  /// Modificar o mapa durante a iteração das chaves pode interromper a iteração.

//! Iterable<V> get values;
  /// Os valores de [this].
  /// Os valores são iterados na ordem de suas chaves correspondentes.
  /// Isso significa que iterar [chaves] e [valores] em paralelo fornece pares de chaves e valores correspondentes.
  /// O iterável retornado tem um método `length` eficiente baseado no [comprimento] do mapa.
  /// Seu método [Iterable.contains] é baseado em comparação `==`.
  /// Modificar o mapa durante a iteração dos valores pode quebrar a iteração.

//! int get length;
  /// O número de pares chave/valor no mapa.

//! bool get isEmpty;
  /// Se não há par chave/valor no mapa.

//! bool get isNotEmpty;
  /// Se há pelo menos um par chave/valor no mapa.

//! Example Map: 
class MapEntry<K, V> {
  /// The key of the entry.
  final K key;

  /// The value associated to [key] in the map.
  final V value;

  /// Creates an entry with [key] and [value].
  const factory MapEntry(K key, V value) = MapEntry<K, V>._;

  const MapEntry._(this.key, this.value);

  String toString() => "MapEntry($key: $value)";
};
}
