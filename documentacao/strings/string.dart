void main() {
//! Obs: String
  /// Uma sequência de unidades de código UTF-16.
  /// Strings são usadas principalmente para representar texto. Um personagem pode ser representado por
  /// vários pontos de código, cada ponto de código consistindo em um ou dois códigos
  /// unidades. Por exemplo, o caractere da bandeira de Papua Nova Guiné requer quatro códigos
  /// unidades para representar dois pontos de código, mas devem ser tratados como um único
  /// caractere: "🇵🇬". Plataformas que não suportam o caractere sinalizador podem mostrar
  /// as letras "PG" em vez disso. Se os pontos de código forem trocados, ele se torna
  /// a bandeira de Guadalupe "🇬🇵" ("GP").
  /// Uma string pode ser única ou multilinha. Strings de linha única são
  /// escrito usando aspas simples ou duplas correspondentes, e strings de várias linhas são
  /// escrito usando aspas triplas. A seguir estão todas as sequências de Dart válidas:
  /// ```dart
  /// 'Single quotes';
  /// "Double quotes";
  /// 'Double quotes in "single" quotes';
  /// "Single quotes in 'double' quotes";
  ///
  /// '''A
  /// multiline
  /// string''';
  ///
  /// """
  /// Another
  /// multiline
  /// string""";
  /// ```
  /// Strings são imutáveis. Embora você não possa alterar uma string, você pode executar
  /// uma operação em uma string que cria uma nova string:
  /// ```dart
  /// const string = 'Dart is fun';
  /// print(string.substring(0, 4)); // 'Dart'
  /// ```
  /// Você pode usar o operador mais (`+`) para concatenar strings:
  /// ```dart
  /// const string = 'Dart ' + 'is ' + 'fun!';
  /// print(string); // 'Dart is fun!'
  /// Literais de string adjacentes são concatenados automaticamente:
  /// ```dart
  /// const string = 'Dart ' 'is ' 'fun!';
  /// print(string); // 'Dart is fun!'
  /// ```
  /// Você pode usar `${}` para interpolar o valor das expressões Dart
  /// dentro de strings. As chaves podem ser omitidas ao avaliar identificadores:
  /// ```dart
  /// const string = 'dartlang';
  /// print('$string has ${string.length} letters'); // dartlang has 8 letters
  /// ```
  /// Uma string é representada por uma sequência de unidades de código Unicode UTF-16
  /// acessível através dos membros [codeUnitAt] ou [codeUnits]:
  /// ```dart
  /// const string = 'Dart';
  /// final firstCodeUnit = string.codeUnitAt(0);
  /// print(firstCodeUnit); // 68, aka U+0044, the code point for 'D'.
  /// final allCodeUnits = string.codeUnits;
  /// print(allCodeUnits); // [68, 97, 114, 116]
  /// ```
  /// Uma representação de string das unidades de código individuais é acessível através
  /// o operador de índice:
  /// ```dart
  /// const string = 'Dart';
  /// final charAtIndex = string[0];
  /// print(charAtIndex); // 'D'
  /// ```
  /// Os caracteres de uma string são codificados em UTF-16. Decodificação UTF-16, que
  /// combina pares substitutos, gera pontos de código Unicode. Seguindo um semelhante
  /// terminologia para Go, Dart usa o nome 'rune' para um inteiro representando um
  /// ponto de código Unicode. Use a propriedade [runes] para obter as runas de uma string:
  /// ```dart
  /// const string = 'Dart';
  /// final runes = string.runes.toList();
  /// print(runes); // [68, 97, 114, 116]
  /// ```
  /// Para um caractere fora do Plano Multilíngue Básico (plano 0) que é
  /// composto por um par substituto, [runes] combina o par e retorna um
  /// único inteiro. Por exemplo, o caractere Unicode para um
  /// musical G-clef ('𝄞') com valor de runa 0x1D11E consiste em um substituto UTF-16
  /// par: `0xD834` e `0xDD1E`. Usando [codeUnits] retorna o par substituto,
  /// e usando `runes` retorna seu valor combinado:
  /// ```dart
  /// const clef = '\u{1D11E}';
  /// for (final item in clef.codeUnits) {
  ///   print(item.toRadixString(16));
  ///   // d834
  ///   // dd1e
  /// }
  /// for (final item in clef.runes) {
  ///   print(item.toRadixString(16)); // 1d11e
  /// }
  /// ```
  /// A classe `String` não pode ser estendida ou implementada. Tentando fazer isso
  /// produz um erro em tempo de compilação.

  /// ## Outros recursos
  /// * [StringBuffer] para construir de forma eficiente uma string de forma incremental.
  /// * [RegExp] para trabalhar com expressões regulares.
  /// * [Strings e expressões regulares](https://dart.dev/guides/libraries/library-tour#strings-and-regular-expressions)

//! String.fromCharCodes (Plural)
  /// Aloca uma nova string contendo o [charCodes] especificado.
  /// Os [charCodes] podem ser unidades de código UTF-16 e runas.
  /// Se um valor char-code for de 16 bits, ele é usado como uma unidade de código:
  /// ```dart
  /// final string = String.fromCharCodes([68]);
  /// print(string); // D
  /// ```
  /// Se um valor de char-code for maior que 16 bits, ele é decomposto em um
  /// par substituto:
  /// ```dart
  /// final clef = String.fromCharCodes([0x1D11E]);
  /// clef.codeUnitAt(0); // 0xD834
  /// clef.codeUnitAt(1); // 0xDD1E
  /// ```
  /// Se [start] e [end] forem fornecidos, apenas os valores de [charCodes]
  /// nas posições de `start` até, mas não incluindo, `end`, são usados.
  /// Os valores `start` e `end` devem satisfazer `0 <= início <= fim <= charCodes.length`.

//! String.fromCharCode (Singular)
  /// Aloca uma nova string contendo o [charCode] especificado.
  /// Se o [charCode] puder ser representado por uma única unidade de código UTF-16, o novo
  /// string contém uma única unidade de código. Caso contrário, o [comprimento] é 2 e
  /// as unidades de código formam um par substituto. Consulte a documentação para [fromCharCodes].
  /// É permitido criar uma [String] com metade de um par substituto.

//! String.fromEnvironment
  /// O valor da string da declaração do ambiente [name].
  /// Declarações de ambiente são fornecidas pela compilação do sistema circundante
  /// ou executando o programa Dart. Declarações mapeiam uma chave de string para uma string valor.
  /// Se [name] não for declarado no ambiente, o resultado será[valor padrão].
  /// Exemplo de obtenção de um valor:
  /// ```dart
  /// const String.fromEnvironment("defaultFloo", defaultValue: "no floo")
  /// ```
  /// Para verificar se existe uma declaração, use
  /// [bool.hasEnvironment]. Exemplo:
  /// ```dart
  /// const maybeDeclared = bool.hasEnvironment("maybeDeclared")
  ///     ? String.fromEnvironment("maybeDeclared")
  ///     : null;
  /// ```
  /// O valor da string, ou a falta de um valor, associado a um [nome]
  /// deve ser consistente em todas as chamadas para `String.fromEnvironment`,
  /// [int.fromEnvironment], [bool.fromEnvironment] e [bool.hasEnvironment] em um único programa.
  /// Este construtor só funciona quando invocado como `const`.
  /// Pode funcionar como uma invocação não constante em algumas plataformas que
  /// tem acesso às opções do compilador em tempo de execução, mas mais adiantado
  /// plataformas compiladas não terão esta informação.
  // Os construtores .fromEnvironment() são especiais porque não queremos
  // usuários para chamá-los usando "new". Proibimos isso dando-lhes corpos
  // que lança, mesmo que os construtores const não tenham permissão para ter corpos.
  // Desabilita esses erros estáticos.

//! String operator []
  /// O caractere (como uma unidade de código único [String]) no [index].
  /// A string retornada representa exatamente uma unidade de código UTF-16, que pode ser
  /// metade de um par substituto. Um único membro de um par substituto é um string UTF-16 inválida:
  /// ```dart
  /// var clef = '\u{1D11E}';
  // These represent invalid UTF-16 strings.
  /// clef[0].codeUnits;      // [0xD834]
  /// clef[1].codeUnits;      // [0xDD1E]
  /// ```
  /// Este método é equivalente a
  /// `String.fromCharCode(this.codeUnitAt(index))`.

//! codeUnitAt
  /// Retorna a unidade de código UTF-16 de 16 bits no [index].

//! length
  /// O comprimento da string.
  /// Retorna o número de unidades de código UTF-16 nesta string. O número
  /// de [runes] pode ser menor, se a string contiver caracteres fora
  /// o Plano Multilíngue Básico (plano 0):
  /// ```dart
  /// 'Dart'.length;          // 4
  /// 'Dart'.runes.length;    // 4
  ///
  /// var clef = '\u{1D11E}';
  /// clef.length;            // 2
  /// clef.runes.length;      // 1
  /// ```

//! hashCode
  /// Um ​​código hash derivado das unidades de código da string.
  /// Isso é compatível com [operador ==]. Strings com a mesma sequência
  /// de unidades de código têm o mesmo código hash.

//! bool operator ==
  /// Se [other] é uma `String` com a mesma sequência de unidades de código.
  /// Este método compara cada unidade de código individual das strings.
  /// Não verifica a equivalência de Unicode.
  /// Por exemplo, ambas as strings a seguir representam a string 'Amélie',
  /// mas devido à sua codificação diferente, não são iguais:
  /// ```dart
  /// 'Am\xe9lie' == 'Ame\u{301}lie'; // false
  /// ```
  /// A primeira string codifica 'é' como uma única unidade de código unicode (também
  /// uma única runa), enquanto a segunda string a codifica como 'e' com o
  /// combinando o caractere de acento '◌́'.

//! compareTo
  /// Compara esta string com [other].
  /// Retorna um valor negativo se `this` for ordenado antes de `other`,
  /// um valor positivo se `this` for ordenado após `other`,
  /// ou zero se `this` e `other` são equivalentes.
  /// A ordenação é a mesma que a ordenação das unidades de código no primeiro
  /// posição onde as duas strings diferem.
  /// Se uma string é um prefixo da outra,
  /// então a string mais curta é ordenada antes da string mais longa.
  /// Se as strings tiverem exatamente o mesmo conteúdo, elas são equivalentes com
  /// em relação à ordenação.
  /// A ordenação não verifica a equivalência de Unicode.
  /// A comparação diferencia maiúsculas de minúsculas.
  /// ```dart
  /// var relation = 'Dart'.compareTo('Go');
  /// print(relation); // < 0
  /// relation = 'Go'.compareTo('Forward');
  /// print(relation); // > 0
  /// relation = 'Forward'.compareTo('Forward');
  /// print(relation); // 0
  /// ```

//! endsWith
  /// Se esta string termina com [other].
  /// ```dart
  /// const string = 'Dart is open source';
  /// print(string.endsWith('urce')); // true
  /// ```

//! startsWith
  /// Se esta string começa com uma correspondência de [pattern].
  /// ```dart
  /// const string = 'Dart is open source';
  /// print(string.startsWith('Dar')); // true
  /// print(string.startsWith(RegExp(r'[A-Z][a-z]'))); // true
  /// ```
  /// Se [index] for fornecido, este método verifica se a substring inicial
  /// nesse índice começa com uma correspondência de [pattern]:
  /// ```dart
  /// const string = 'Dart';
  /// print(string.startsWith('art', 0)); // false
  /// print(string.startsWith('art', 1)); // true
  /// print(string.startsWith(RegExp(r'\w{3}'), 2)); // false
  /// ```
  /// [index] não deve ser negativo ou maior que [length].
  ///
  /// Um ​​[RegExp] contendo '^' não corresponde se o [index] for maior que
  /// zero e o regexp não é multi-linha.
  /// O padrão funciona na string como um todo e não extrai
  /// uma substring começando em [index] primeiro:
  /// ```dart
  /// const string = 'Dart';
  /// print(string.startsWith(RegExp(r'^art'), 1)); // false
  /// print(string.startsWith(RegExp(r'art'), 1)); // true
  /// ```

//! indexOf
  /// Retorna a posição da primeira correspondência de [pattern] nesta string,
  /// começando em [start], inclusive:
  /// ```dart
  /// const string = 'Dartisans';
  /// print(string.indexOf('art')); // 1
  /// print(string.indexOf(RegExp(r'[A-Z][a-z]'))); // 0
  /// ```
  /// Retorna -1 se nenhuma correspondência for encontrada:
  /// ```dart
  /// const string = 'Dartisans';
  /// string.indexOf(RegExp(r'dart')); // -1
  /// ```
  /// O [start] deve ser não negativo e não maior que [length].

//! lastIndexOf
  /// A posição inicial da última correspondência [padrão] nesta string.
  /// Encontra uma correspondência de padrão pesquisando para trás começando em [start]:
  /// ```dart
  /// const string = 'Dartisans';
  /// print(string.lastIndexOf('a')); // 6
  /// print(string.lastIndexOf(RegExp(r'a(r|n)'))); // 6
  /// ```
  /// Retorna -1 se [padrão] não puder ser encontrado nesta string.
  /// ```dart
  /// const string = 'Dartisans';
  /// print(string.lastIndexOf(RegExp(r'DART'))); // -1
  /// ```
  /// Se [start] for omitido, a pesquisa começa a partir do final da string.
  /// Se fornecido, [start] deve ser não negativo e não maior que [length].

//! isEmpty
  /// Se esta string está vazia.

//! isNotEmpty
  /// Se esta string não está vazia.

//! String operator +
  /// Cria uma nova string concatenando esta string com [other].
  /// Example:
  /// ```dart
  /// const string = 'dart' + 'lang'; // 'dartlang'
  /// ```

//! substring
  /// A substring desta string de [start], inclusive, até [end], exclusive.
  /// Example:
  /// ```dart
  /// const string = 'dartlang';
  /// var result = string.substring(1); // 'artlang'
  /// result = string.substring(1, 4); // 'art'
  /// ```
  /// Ambos [start] e [end] devem ser não negativos e não maiores que [length], e
  /// [end], se fornecido, deve ser maior ou igual a [start].

//! trim
  /// A string sem nenhum espaço em branco inicial e final.
  ///
  /// Se a string contiver espaços em branco à esquerda ou à direita, uma nova string sem
  /// à esquerda e nenhum espaço em branco à direita é retornado:
  /// ```dart
  /// final trimmed = '\tDart is fun\n'.trim();
  /// print(trimmed); // 'Dart is fun'
  /// ```
  /// Caso contrário, a própria string original é retornada:
  /// ```dart
  /// const string1 = 'Dart';
  /// final string2 = string1.trim(); // 'Dart'
  /// print(identical(string1, string2)); // true
  /// ```
  /// Whitespace é definido pela propriedade Unicode White_Space (conforme definido em
  /// versão 6.2 ou posterior) e o caractere BOM, 0xFEFF.
  /// Aqui está a lista de caracteres aparados de acordo com o Unicode versão 6.3:
  /// ```plaintext
  ///     0009..000D    ; White_Space # Cc   <control-0009>..<control-000D>
  ///     0020          ; White_Space # Zs   SPACE
  ///     0085          ; White_Space # Cc   <control-0085>
  ///     00A0          ; White_Space # Zs   NO-BREAK SPACE
  ///     1680          ; White_Space # Zs   OGHAM SPACE MARK
  ///     2000..200A    ; White_Space # Zs   EN QUAD..HAIR SPACE
  ///     2028          ; White_Space # Zl   LINE SEPARATOR
  ///     2029          ; White_Space # Zp   PARAGRAPH SEPARATOR
  ///     202F          ; White_Space # Zs   NARROW NO-BREAK SPACE
  ///     205F          ; White_Space # Zs   MEDIUM MATHEMATICAL SPACE
  ///     3000          ; White_Space # Zs   IDEOGRAPHIC SPACE
  ///
  ///     FEFF          ; BOM                ZERO WIDTH NO_BREAK SPACE
  /// ```
  /// Algumas versões posteriores do Unicode não incluem U+0085 como um espaço em branco
  /// personagem. Se é aparado depende da versão Unicode
  /// usado pelo sistema.

//! trimLeft
  /// A string sem nenhum espaço em branco inicial.
  /// Como [trim], mas apenas remove os espaços em branco iniciais.
  /// ```dart
  /// final string = ' Dart '.trimLeft();
  /// print(string); // 'Dart '
  /// ```

//! trimRight
  /// A string sem nenhum espaço em branco à direita.
  /// Como [trim], mas apenas remove os espaços em branco à direita.
  /// ```dart
  /// final string = ' Dart '.trimRight();
  /// print(string); // ' Dart'
  /// ```

//! String operator *
  /// Cria uma nova string concatenando esta string consigo mesma um número das vezes.
  /// O resultado de `str * n` é equivalente a
  /// `str + str + ...`(n vezes)`... + str`.
  /// ```dart
  /// const string = 'Dart';
  /// final multiplied = string * 3;
  /// print(multiplied); // 'DartDartDart'
  /// ```
  /// Retorna uma string vazia se [times] for zero ou negativo.

//! padLeft
  /// Preenche esta string à esquerda se for menor que [width].
  /// Retorna uma nova string que precede [padding] nesta string
  /// uma vez para cada posição o comprimento é menor que [width].
  /// ```dart
  /// const string = 'D';
  /// print(string.padLeft(4)); // '   D'
  /// print(string.padLeft(2, 'x')); // 'xD'
  /// print(string.padLeft(4, 'y')); // 'yyyD'
  /// print(string.padLeft(4, '>>')); // '>>>>>>D'
  /// ```
  /// Se [width] já for menor ou igual a `this.length`,
  /// nenhum preenchimento é adicionado. Uma "largura" negativa é tratada como zero.
  ///
  /// Se [padding] tiver comprimento diferente de 1, o resultado não será
  /// tem comprimento `width`. Isso pode ser útil para os casos em que o
  /// padding é uma string mais longa que representa um único caractere, como
  /// `"&nbsp;"` ou `"\u{10002}`".
  /// Nesse caso, o usuário deve certificar-se de que `this.length` seja
  /// a medida correta do comprimento da string.

//! padRight
  /// Preenche esta string à direita se for menor que [width].
  /// Retorna uma nova string que acrescenta [padding] após esta string
  /// uma vez para cada posição o comprimento é menor que [width].
  /// ```dart
  /// const string = 'D';
  /// print(string.padRight(4)); // 'D    '
  /// print(string.padRight(2, 'x')); // 'Dx'
  /// print(string.padRight(4, 'y')); // 'Dyyy'
  /// print(string.padRight(4, '>>')); // 'D>>>>>>'
  /// ```
  /// Se [width] já for menor ou igual a `this.length`,
  /// nenhum preenchimento é adicionado. Uma "largura" negativa é tratada como zero.
  ///
  /// Se [padding] tiver comprimento diferente de 1, o resultado não será
  /// tem comprimento `width`. Isso pode ser útil para os casos em que o
  /// padding é uma string mais longa que representa um único caractere, como
  /// `"&nbsp;"` ou `"\u{10002}`".
  /// Nesse caso, o usuário deve certificar-se de que `this.length` seja
  /// a medida correta do comprimento da string.

//! contains
  /// Se esta string contém uma correspondência de [other].
  /// Example:
  /// ```dart
  /// const string = 'Dart strings';
  /// final containsD = string.contains('D'); // true
  /// final containsUpperCase = string.contains(RegExp(r'[A-Z]')); // true
  /// ```
  /// Se [startIndex] for fornecido, este método corresponde apenas a ou depois disso
  /// índice:
  /// ```dart
  /// const string = 'Dart strings';
  /// final containsD = string.contains(RegExp('D'), 0); // true
  /// final caseSensitive = string.contains(RegExp(r'[A-Z]'), 1); // false
  /// ```
  /// O [startIndex] não deve ser negativo ou maior que [length].

//! replaceFirst
  /// Cria uma nova string com a primeira ocorrência de [from] substituída por [to].
  /// Encontra a primeira correspondência de [from] nesta string, começando em [startIndex],
  /// e cria uma nova string onde essa correspondência é substituída pela string [to].
  /// Example:
  /// ```dart
  /// '0.0001'.replaceFirst(RegExp(r'0'), ''); // '.0001'
  /// '0.0001'.replaceFirst(RegExp(r'0'), '7', 1);  // '0.7001'
  /// ```

//! replaceFirstMapped
  /// Substitui a primeira ocorrência de [from] nesta string.
  /// ```dart
  /// const string = 'Dart is fun';
  /// print(string.replaceFirstMapped(
  ///     'fun', (m) => 'open source')); // Dart is open source
  ///
  /// print(string.replaceFirstMapped(
  ///     RegExp(r'\w(\w*)'), (m) => '<${m[0]}-${m[1]}>')); // <Dart-art> is fun
  /// ```
  /// Retorna uma nova string, que é esta string
  /// exceto que a primeira correspondência de [from], começando em [startIndex],
  /// é substituído pelo resultado da chamada [replace] com o objeto match.
  ///
  /// O [startIndex] deve ser não negativo e não maior que [length].

//! replaceAll
  /// Substitui todas as substrings que correspondem a [from] por [replace].
  ///
  /// Cria uma nova string na qual as substrings não sobrepostas correspondem
  /// [from] (os iterados por `from.allMatches(thisString)`) são substituídos
  /// pela string literal [substituir].
  /// ```dart
  /// 'resume'.replaceAll(RegExp(r'e'), 'é'); // 'résumé'
  /// ```
  /// Observe que a string [replace] não é interpretada. Se a substituição
  /// depende da correspondência (por exemplo, nos grupos de captura de um [RegExp]), use
  /// o método [replaceAllMapped] em vez disso.

//! replaceAllMapped
  /// Substitui todas as substrings que correspondem a [from] por uma string computada.
  /// Cria uma nova string na qual as substrings não sobrepostas que correspondem
  /// [from] (os iterados por `from.allMatches(thisString)`) são substituídos
  /// pelo resultado de chamar [replace] no objeto [Match] correspondente.
  /// Isso pode ser usado para substituir correspondências por novo conteúdo que depende do
  /// corresponde, ao contrário de [replaceAll] onde a string de substituição é sempre a mesma.
  /// A função [replace] é chamada com o [Match] gerado
  /// pelo padrão, e seu resultado é usado como substituto.
  /// A função definida abaixo converte cada palavra em uma string para simplificado
  /// 'porco latino' usando [replaceAllMapped]:
  /// ```dart
  /// String pigLatin(String words) => words.replaceAllMapped(
  ///     RegExp(r'\b(\w*?)([aeiou]\w*)', caseSensitive: false),
  ///     (Match m) => "${m[2]}${m[1]}${m[1]!.isEmpty ? 'way' : 'ay'}");
  ///
  /// final result = pigLatin('I have a secret now!');
  /// print(result); // 'Iway avehay away ecretsay ownay!'
  /// ```

//! replaceRange
  /// Substitui a substring de [start] a [end] por [replacement].
  ///
  /// Cria uma nova string equivalente a:
  /// ```dart
  /// this.substring(0, start) + replacement + this.substring(end)
  /// ```
  /// Example:
  /// ```dart
  /// const string = 'Dart is fun';
  /// final result = string.replaceRange(8, null, 'open source');
  /// print(result); // Dart is open source
  /// ```
  /// Os índices [start] e [end] devem especificar um intervalo válido desta string.
  /// Isso é `0 <= start <= end <= this.length`.
  /// Se [end] for `null`, o padrão é [length].

//! split
  /// Divide a string em correspondências de [pattern] e retorna uma lista de substrings.
  ///
  /// Encontra todas as correspondências de `pattern` nesta string,
  /// como usando [Pattern.allMatches],
  /// e retorna a lista das substrings entre as correspondências,
  /// antes da primeira partida e depois da última partida.
  /// ```dart
  /// const string = 'Hello world!';
  /// final splitted = string.split(' ');
  /// print(splitted); // [Hello, world!];
  /// ```
  /// Se o padrão não corresponder a essa string,
  /// o resultado é sempre uma lista contendo apenas a string original.
  ///
  /// Se o [padrão] for uma [String], então é sempre o caso que:
  /// ```dart
  /// string.split(pattern).join(pattern) == string
  /// ```
  /// Se a primeira correspondência for uma correspondência vazia no início da string,
  /// a substring vazia antes de não ser incluída no resultado.
  /// Se a última correspondência for uma correspondência vazia no final da string,
  /// a substring vazia após não ser incluída no resultado.
  /// Se uma correspondência estiver vazia e seguir imediatamente uma anterior
  /// partida (começa na posição onde a partida anterior terminou),
  /// então a substring vazia entre as duas correspondências não é
  /// incluído no resultado.
  /// ```dart
  /// const string = 'abba';
  /// final re = RegExp(r'b*');
  /// // re.allMatches(string) will find four matches:
  /// // * empty match before first "a".
  /// // * match of "bb"
  /// // * empty match after "bb", before second "a"
  /// // * empty match after second "a".
  /// print(string.split(re)); // [a, a]
  /// ```
  /// Uma correspondência não vazia no início ou no final da string, ou após outra
  /// corresponde, não é tratado especialmente e introduzirá substrings vazias
  /// no resultado:
  /// ```dart
  /// const string = 'abbaa';
  /// final splitted = string.split('a'); // ['', 'bb', '', '']
  /// ```
  /// Se esta string for a string vazia, o resultado é uma lista vazia
  /// se `pattern` corresponder à string vazia, já que a string vazia
  /// antes e depois da primeira e última correspondência vazia não são incluídas.
  /// (Ainda é uma lista contendo a string vazia original `[""]`
  /// se o padrão não corresponder).
  /// ```dart
  /// const string = '';
  /// print(string.split('')); // []
  /// print(string.split('a')); // []
  /// ```
  /// Dividir com um padrão vazio divide a string em uma unidade de código único
  /// Strings.
  /// ```dart
  /// const string = 'Pub';
  /// print(string.split('')); // [P, u, b]
  ///
  /// // Same as:
  /// var codeUnitStrings = [
  ///   for (final unit in string.codeUnits) String.fromCharCode(unit)
  /// ];
  /// print(codeUnitStrings); // [P, u, b]
  /// ```
  /// A divisão acontece nos limites da unidade de código UTF-16,
  /// e não nos limites da runa (ponto de código Unicode):
  /// ```dart
  /// // String made up of two code units, but one rune.
  /// const string = '\u{1D11E}';
  /// final splitted = string.split('');
  /// print(splitted); // ['\ud834', '\udd1e'] - 2 unpaired surrogate values
  /// ```
  /// Para obter uma lista de strings contendo as runas individuais de uma string,
  /// você não deve usar split.
  /// Você pode obter uma string para cada runa da seguinte forma:
  /// ```dart
  /// const string = '\u{1F642}';
  /// for (final rune in string.runes) {
  ///   print(String.fromCharCode(rune));
  /// }
  /// ```

//! splitMapJoin
  /// Divide a string, converte suas partes e as combina em um novo
  /// fragmento.
  ///
  /// O [padrão] é usado para dividir a string
  /// em partes e separando correspondências.
  /// Cada correspondência de [Pattern.allMatches] de [pattern] nesta string é
  /// usado como uma correspondência e as substrings entre o final de uma correspondência
  /// (ou o início da string) e o início da próxima partida (ou o
  /// fim da string) é tratado como uma parte não correspondida.
  /// (Não há omissão de correspondências vazias à esquerda ou à direita, como
  /// em [split], todas as correspondências e partes entre as estão incluídas.)
  ///
  /// Cada correspondência é convertida em uma string chamando [onMatch]. Se [no jogo]
  /// é omitido, a substring correspondente é usada.
  ///
  /// Cada parte não correspondida é convertida em uma string por uma chamada para [onNonMatch].
  /// Se [onNonMatch] for omitido, a própria substring não correspondente será usada.
  ///
  /// Então todas as partes convertidas são concatenadas na string resultante.
  /// ```dart
  /// final result = 'Eats shoots leaves'.splitMapJoin(RegExp(r'shoots'),
  ///     onMatch: (m) => '${m[0]}', // (or no onMatch at all)
  ///     onNonMatch: (n) => '*');
  /// print(result); // *shoots*
  /// ```

//! codeUnits
  /// Uma lista não modificável das unidades de código UTF-16 desta string.

//! runes
  /// Um ​​[Iterable] de pontos de código Unicode desta string.
  /// Se a string contém pares substitutos, eles são combinados e retornados
  /// como um inteiro por este iterador. Metades substitutas incomparáveis ​​são tratadas
  /// como unidades de código válidas de 16 bits.

//! toLowerCase
  /// Converte todos os caracteres nesta string para letras minúsculas.
  /// Se a string já estiver em letras minúsculas, este método retorna `this`.
  /// ```dart
  /// 'ALPHABET'.toLowerCase(); // 'alphabet'
  /// 'abc'.toLowerCase(); // 'abc'
  /// ```
  /// Esta função usa o mapeamento Unicode independente de idioma e, portanto, apenas
  /// funciona em alguns idiomas.
  // TODO(floitsch): documenta melhor. (Veja EcmaScript para descrição).

//! toUpperCase
  /// Converte todos os caracteres desta string para maiúsculas.
  /// Se a string já estiver em letras maiúsculas, este método retorna `this`.
  /// ```dart
  /// 'alphabet'.toUpperCase(); // 'ALPHABET'
  /// 'ABC'.toUpperCase(); // 'ABC'
  /// ```
  /// Esta função usa o mapeamento Unicode independente de idioma e, portanto, apenas
  /// funciona em alguns idiomas.
  // TODO(floitsch): documenta melhor. (Veja EcmaScript para descrição).
}
