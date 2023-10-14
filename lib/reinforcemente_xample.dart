import 'dart:developer';
import 'dart:math' hide log;

class ReinforcementExample {
  static ReinforcementExample? _instance;
  static ReinforcementExample get instance =>
      _instance ??= ReinforcementExample._();
  ReinforcementExample._();
  factory ReinforcementExample() => _instance ??= ReinforcementExample._();

//TODO Bir sayının iban olup olmadığını ve ibansa bu işlemi yapmasını sağlayın
//   String iban = "18256598572232895001";  expected:  "TR 1825 6598 4432 5789 5001";

//örnek 1

  myIbanControl() {
    String iban = "1825 6598 5789 5001";
    var alm = iban.split(" ").join("");
    String kame = "TR$alm";
    log(kame);
  }

  /// bir tam sayı listesindeki elemanları toplayan program +

  totalInteger() {
    List<int> integerList = [4, 6, 12, 11, 16];
    int total = integerList.reduce((value, element) => value + element);
    log(total.toString());
  }

//   - Bir liste içindeki en büyük ve en küçük öğeyi bulan programı yazın. +
  void startAndEndValue() {
    List<int> integerList = [458, 526, 12, 111, 16];

    integerList.sort();

    int startValue = integerList.first;
    int endValue = integerList.last;
    log("$startValue , $endValue");
  }

  void nameSort() {
    List<String> name = ["ali", "ayşe", "fatma"];
    name.sort((a, b) => a.length.compareTo(b.length));
    log(name.toString());
  }

// - Bir listedeki öğelerin sırasını tersine çeviren programı yazın. +

  numberListRevers() {
    List<int> number = [1, 2, 3, 4, 5, 6];
    number.reversed;
    log(number.toString());
  }

// - Bir liste içindeki tüm tek ve çift sayıları ayıran programı yazın.

  void oddAndEven() {
    List<int> numbers = [11, 23, 34, 47, 55, 66];
    List<int> evenNumbers = [];
    List<int> oddNumbers = [];
    oddNumbers = numbers.where((e) => e.isOdd).toList();
    evenNumbers = numbers.where((e) => e.isEven).toList();

    // for (int i = 0; i < numbers.length; i++) {
    //   if (numbers[i] % 2 == 0) {
    //     oddNumbers.add(numbers[i]);
    //   } else {
    //     evenNumbers.add(numbers[i]);
    //   }
    // }
    log("Tek sayılar: ${evenNumbers.toString()} ");
    log("Çift sayılar: ${oddNumbers.toString()} ");
  }

// - Bir tamsayı listesinin ortalamasını hesaplayan programı yazın.  +
  numberAvarage() {
    List<int> integerList = [4, 5, 6, 10, 20, 2];
    int total = integerList.reduce((value, element) => value + element);
    int numberLenght = integerList.length;
    final double numAvaragetotal = total / numberLenght;
// Double bir sayının noktadan sonra son 2 rakamını gösteren method toStringAsFixed(2)

    log(numAvaragetotal.toStringAsFixed(2));
  }

// - Bir sayı listesini büyükten küçüğe sıralayan programı yazın.  ( -)

  bigToSmall() {
    List<int> numberList = [17, 22, 15, 25, 55];
    numberList.sort();

    log(numberList.reversed.toString());
  }

// - Bir listede belirli bir öğenin ilk indeksini bulan  programı yazın.   +

  witchIndex() {
    List<String> carList = [
      "bmw",
      "mercedes",
      "audi",
      "ford",
      "mitsubishi",
      "audi"
    ];
    var result = carList.indexOf(
      "audi",
    );
    log(result.toString());
  }

// - İki liste verildiğinde, bu iki listeyi birleştiren programı yazın.   +
  combinedList() {
    List<String> computerItemList = [
      "mouse",
      "monitor",
      "laptop",
      "keyboard",
      "airphone"
    ];
    List<String> carItemList = ["wheel", "highLight", "brakeSystem"];

    computerItemList.addAll(carItemList);

    /// veya

    // computerItemList.insertAll(0, carItemList);
    log(computerItemList.toString());
  }

// - Bir listeden belirli bir item bulan veya en yakın list itemlarını bulan programı yazın. +
  ///önemli ************* arama sayfası / filtreleme
  searchItem() {
    List<String> homeaksesuar = [
      "kapı",
      "koLtuk",
      "tv",
      "masa",
      "kanepe",
      "kazan",
      "ünite",
      "lamba",
      "kapacak"
    ];
    var aksesuar = homeaksesuar.where(
        (element) => element.toLowerCase().contains("KOLTU".toLowerCase()));
    log(aksesuar.toString());
  }

// - Bir listeden belirli bir öğeyi kaldıran programı yazın.   +

  nameRemove() {
    List<String> nameList = ["osman", "hayri", "kevser", "cumali"];
    nameList.remove("kevser");
    log(nameList.toString());
  }

// denemeler

  void notelistEvery() {
    List<double> notesList = [0.1, 0.5, 0.77, 0.99, 2.6];

    var zaman = notesList.every((element) => element <= 3);
    return log(zaman.toString());
  }

  // ADVANCE EXAMPLE

//   Soru 1) Mail@gmail. com => bu mailde ilk harf yanlışlıkla büyük girilmiş
//ve . com arasında boşluk bırakılmış. mail@gmail.com şeklinde tekrar console a yazdırınız.

  void controlExample() {
    //TODO!!
  }

// Soru2) DaRt ve daRT kelimeleri literatür olarak aynı şeyi ifade etmekte.
//Ama bilgisayar ortamında DaRt==daRT=>false değeri döndermektedir. True değerini göndermesini sağlayın.
  controlDart() {
    String yazim = "DaRt";
    String yazim2 = "daRT";

    var result = yazim.toLowerCase().compareTo(yazim2.toLowerCase());
    log(result.toString());
  }

// Soru3) List<String> names = [“can”,”mehmet”,”Yusuf”] => dizideki en uzun ismi bulup console’a yazdırın
  namelenght() {
    List<String> nameMostLengh = ["ömer", "can", "mehmet", "Yusuf"];

    nameMostLengh.sort(
      (a, b) => a.toLowerCase().length.compareTo(b.toLowerCase().length),
    );
    log(nameMostLengh.last.toString());
  }

// Soru4) +(90) 505 555 55 55 => bu numarayı console’a 90505555555 şeklinde yazdırınız ++++
  unifiedNumber() {
    // regex learn in 20 munites
    //https://www.youtube.com/watch?v=rhzKDrUiJVk&t=748s&ab_channel=WebDevSimplified
    String number = "+(90) 505 555 55 55";
    final reg = RegExp(r'(\d+)');
    var numberResult = reg
        .allMatches(number)
        .map((e) => e.group(0))
        .toString()
        .trim()
        .replaceAll(", ", "");
    log(numberResult.toString());
  }

// Soru5) +905559095090 bu numaranın Türkiye numarası olup olmadığını doğrulayınız  +++
  numberControl() {
    String number = "90555 909 5090";

    bool numberResult = number.replaceAll("+", "").startsWith("90", 0);
    log("Türkiye numarası mı? ${numberResult == false ? "hayır" : "evet"}");
    if (numberResult == false) {
      number = "+90 $number";
    }
    log(number);
  }
}
