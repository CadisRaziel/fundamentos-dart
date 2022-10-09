// Take an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer.
// Square all numbers k (0 <= k <= n) between 0 and n.
// Count the numbers of digits d used in the writing of all the k**2.
// Call nb_dig (or nbDig or ...) the function taking n and d as parameters and returning this count.

// exemple:
// n = 10, d = 1
// the k*k are 0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100
// We are using the digit 1 in: 1, 16, 81, 100. The total count is then 4.

// nb_dig(25, 1) returns 11 since
// the k*k that contain the digit 1 are:
// 1, 16, 81, 100, 121, 144, 169, 196, 361, 441.
// So there are 11 digits 1 for the squares of numbers between 0 and 25.

//-----------------------------------------------------------------------------------------------------------------------------------

// Tome um inteiro n (n >= 0)e um dígito d (0 <= d <= 9)como um inteiro.
// Eleve ao quadrado todos os números k (0 <= k <= n)entre 0 e n.
// Conte os números de dígitos dusados ​​na escrita de todos os arquivos k**2.
// Chame nb_dig(ou nbDig ou...) a função pegando ne dcomo parâmetros e retornando essa contagem.

//exemplo:
// n = 10, d = 1
// os k*k são 0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100
// Estamos usando o dígito 1 em: 1, 16, 81, 100. A contagem total é então 4.

// nb_dig(25, 1) retorna 11 desde
// os k*k que contêm o dígito 1 são:
// 1, 16, 81, 100, 121, 144, 169, 196, 361, 441.
// Portanto, existem 11 dígitos 1 para os quadrados dos números entre 0 e 25.

void main() {
  print(nbDig(10, 1));
}

int nbDig(int n, int d) {
  var counter = d == 0 ? 1 : 0;

  var numbers = <int>[];
  for (var i = 0; i <= n; i++) {
    numbers.add(i * i);
  }

  for (var n in numbers) {
    while (n > 0) {
      if (n % 10 == d) {
        counter++;
      }
      n ~/= 10;
    }
  }

  return counter;
}

//outros exemplos iguais mais de forma escrita diferente

int nbDig1(int n, int d) {
  var count = 0;
  for (var i = 0; i <= n; i++) {
    count += d.toString().allMatches((i * i).toString()).length;
  }
  return count;
}

int nbDig2(int n, int d) =>
    '$d'.allMatches([for (var i = 0; i <= n; i += 1) i * i].join()).length;

int nbDig3(int n, int d) {
  int result = 0;
  for (int i = 0; i <= n; i++) {
    (i * i).toString().split('').map(int.parse).forEach((e) {
      if (e == d) result++;
    });
  }
  return result;
}

int nbDig4(int n, int b) {
  List<int> kk = [];
  for (var i = 0; i <= n; i++) {
    final d = i * i;
    kk.add(d);
  }
  List<int> kkcontainb = [];
  List<int> howmuchb = [];
  for (var i = 0; i < kk.length; i++) {
    int a = kk[i];
    String y = a.toString();
    int c = '$b'.allMatches(y).length;
    for (var i = 0; i < c; i++) {
      howmuchb.add(i);
    }
  }

  return howmuchb.length;
}

int nbDig5(int n, int d) {
  int result = 0;
  for (int i = 0; i <= n; i++) {
    (i * i).toString().split('').forEach((e) {
      if (e == d.toString()) result++;
    });
  }
  return result;
}

int nbDig6(int n, int d) {
  List<int> _squares = List<int>.generate(n + 1, (int num) => num * num);

  int _dsCount = 0;

  _squares.forEach((_square) {
    _square.toString().runes.forEach((int rune) {
      var char = String.fromCharCode(rune);

      if (int.parse(char.toString()) == d) _dsCount += 1;
    });
  });

  return _dsCount;
}

int nbDig7(int n, int d) {
  // your code
  var squares = [];
  int count = 0;

  for (int i = 0; i <= n; i++) squares.add(i * i);

  for (int i = 0; i < squares.length; i++) {
    count += (d.toString()).allMatches((squares[i].toString())).length;
  }
  return count;
}

int nbDig8(int n, int d) => d
    .toString()
    .allMatches(
        List<String>.generate(n + 1, (int index) => (index * index).toString())
            .join(""))
    .length;

int nbDig9(int n, int d) {
  var tmp = 0;
  for (int i = 0; i < n + 1; i++) {
    var str = (i * i).toString().split(d.toString());
    tmp = tmp + str.length - 1;
  }
  return tmp;
}

int nbDig11(int n, int d) {
  int count = 0;
  if (n >= 0 && d >= 0) {
    for (int i = 0; i <= n; i++) {
      int digit = i * i;
      String str = digit.toString();
      if (str.isNotEmpty) {
        for (int i = 0; i < str.length; i++) {
          if (int.parse(str[i]) == d) {
            count++;
          }
        }
      }
    }
  } else {
    print('The method does not process negative numbers.');
  }
  return count;
}

int nbDig12(int n, int d) {
  List<int> values = [];

  for (int x = 0; x <= n; x++) {
    values.add(x * x);
  }

  return values.fold(
      0, (sum, a) => sum + d.toString().allMatches(a.toString()).length);
}

int nbDig13(int n, int d) {
  int total = 0;
  for (var i = 0; i < n + 1; i++) {
    total += d.toString().allMatches((i * i).toString()).length;
  }
  return total;
}

int nbDig14(int n, int d) {
  var kon = StringBuffer();
  for (var k = 0; k <= n; k++) {
    if ((k * k).toString().split('').contains(d.toString())) {
      kon.write((k * k).toString());
    }
  }
  return (d.toString().allMatches(kon.toString()).length);
}

int nbDig15(int n, int d) => List.generate(n + 1, (x) => x * x)
    .fold<int>(0, (a, b) => a + '$b'.split('').where((x) => x == '$d').length);

int nbDig16(int n, int d) {
  var count = 0;

  if (d == 0) {
    count++;
  }

  for (var i = 0; i <= n; i++) {
    var num = i * i;
    while (num > 0) {
      if (num % 10 == d) {
        count++;
      }
      num = num ~/ 10;
    }
  }
  return count;
}

int nbDig17(int n, int d) {
  int counter = 0;
  for (int i = 0; i <= n; i++) {
    int squared = i * i;
    String origin = squared.toString();
    String modified = origin.replaceAll(d.toString(), "");
    counter += origin.length - modified.length;
  }
  return counter;
}

int nbDig18(int n, int d) {
  List<int> squares = [0];

  for (int i = 0; i <= n; i++) squares.add(i * i);

  final sum = squares.reduce((value, square) {
    final List<String> squareElements = square.toString().split('');
    final Iterable<String> squareZeroElements = squareElements
        .where((squareelement) => whereContainsD(squareelement, d));

    return value + squareZeroElements.length;
  });

  return sum;
}

bool whereContainsD(squareElement, d) {
  return squareElement == d.toString();
}

int nbDig19(int n, int d) => Iterable.generate(n + 1)
    .map((e) => e * e)
    .join()
    .split('')
    .where((e) => e.contains('$d'))
    .length;

int nbDig20(int n, int d) {
  int res = 0;
  for (int k = 0; k <= n; k++) {
    int temp = k * k;
    res += temp.toString().split('').where((e) => e == d.toString()).length;
  }
  return res;
}

int nbDig21(int n, int d) {
  List<dynamic> nums = [];
  for (int i = 0; i <= n; i++) {
    if ((i * i).toString().contains(d.toString())) {
      nums.add((i * i).toString());
    }
  }
  return nums.join('').split(d.toString()).length - 1;
}

nbDig22(int n, int d) {
  // your code
  var a = [];
  for (var i = 0; i <= n; i++) {
    a.add(i * i);
  }
  var b = a.join("");
  var c = b.split("");
  List<int> y = c.map(int.parse).toList();
  var z = [];
  for (var i = 0; i < c.length; i++) {
    if (d == y[i]) {
      z.add(y[i]);
    }
  }
  return z.length;
}

int nbDig23(int n, int d) {
  int result = 0;
  for (int i = 0; i <= n; i++) {
    int sq = i * i;
    while (sq > 0) {
      if (sq % 10 == d) {
        result++;
      }
      sq = (sq / 10).floor();
    }
  }
  if (d == 0) result++;
  return result;
}

int nbDig24(int n, int d) {
  List<int> kk = [];
  for (int i = 0; i <= n; i++) {
    kk.add(i * i);
  }
  int count = 0;
  for (int k in kk) {
    int c = k;
    do {
      if (c % 10 == d) count++;
      c = c ~/ 10;
    } while (c > 0);
  }
  return count;
}

int nbDig25(int n, int d) {
  return List.generate(n + 1, (i) => i * i).fold(
      0,
      (value, curr) =>
          value +
          List.from('$curr'.codeUnits)
              .map((e) => String.fromCharCodes([e]))
              .where((e) => e == '$d')
              .length);
}

int nbDig26(int n, int d) {
  var ks = [];
  for (int i = 0; i <= n; i++) ks.add(i * i);
  return d.toString().allMatches(ks.join()).length;
}
