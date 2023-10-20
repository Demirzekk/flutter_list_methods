import 'dart:developer';

class ReinforcementExample {
  static ReinforcementExample? _instance;
  static ReinforcementExample get instance =>
      _instance ??= ReinforcementExample._();
  ReinforcementExample._();
  factory ReinforcementExample() => _instance ??= ReinforcementExample._();

//TODO Bir sayının iban olup olmadığını ve ibansa bu işlemi yapmasını sağlayın --------------
//   String iban = "18256598572232895001";  expected:  "TR 1825 6598 4432 5789 5001";

  myIbanControl() {
    String iban = "18256598572232895001";
    List<String> ibans = iban.split("").sublist(0, 16);
    var convertToString = ibans.toString();
    log(convertToString.toString());
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
    String mail = "Mail@gmail. com";

    var mailNotSpace = mail.replaceAll(" ", "").toLowerCase();
    log(mailNotSpace.toString());

    ///  TODO = sadece belirli bir kelimenin belirli bir indexini bulmak için veya değiştirmek için?
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

  deneme() {
    List<int> list = [5, 9, 20, 35, 246];
    var total = list.takeWhile((value) => value < 35);
    log(total.toString());
  }

  //Soru 6) ana, kelek, pide, ada, yapay gibi kelimler palindrom kelimelerdir. Yani terstende okununca aynı => +++---eksik var
  //kelime ile karşılaşılır. Verilen bir string kelimenin palindrome bir kelime olup olmadığını bulan dart logicini yazınız.
  reversedExample() {
    List<String> words = ["ana", "kelek", "pideler", "ada", "yapay"];
    String word = "Kanape";
    String result = "";
    for (int i = word.split("").join("").length - 1; i >= 0; i--) {
      result += word[i];
    }
    log(result);
    log(words.reversed.toString());
  }

  palidrome() {
    List<String> words = ["ana", "kelek", "pideler", "ada", "yapay"];
    // Where ile nasıl yapılır
    words.where((element) {
      if (element == element.split("").reversed.join("")) {
        log("$element :  palindrom bir kelimedir");
      } else {
        log("$element :  palindrom bir kelime değildir!");
      }
      return true;
    }).toList();
// // for ile yapımı
//     for (int i = 0; i < words.length; i++) {
//       final word = words[i].split("").reversed.join("");

//       if (word == words[i]) {
//         log("$word :  palindrom bir kelimedir");
//       } else {
//         log("${words[i]} :  palindrom bir kelime değildir!");
//       }
//     }
  }

//Soru 7) Bir liste içinde bir nesnenin kaç kez tekranlandığını bulan dart logicini yazınız. +++  =>>> bi daha bak
//Örnek; [“kaş”,”Kuşadası”,”Lüleburgaz”,”kaş”,”Şişli”]; //Expected=> kaş kelimesi 2 kez geçmektedir.

  repeatedWords() {
    List<String> objectNames = [
      "kaş",
      "kuşadası",
      "lüleburgaz",
      "kaş",
      "şişli",
      "kaş",
      "alanya",
      "bodrum",
      "alanya"
    ];
    Map<String, int> count = {};

    for (String item in objectNames) {
      if (count.containsKey(item)) {
        count[item] = (count[item]! + 1);
      } else {
        count[item] = 1;
      }
    }
    count.forEach((key, value) {
      log("$key kelimesi $value defa geçmektedir");
    });
    // int count = 0;
    // objectNames.forEach((element) {
    //   if (element == "kuşadası") {
    //     count++;
    //     log("$element adı $count defa geçiyor");
    //   }
    // });
  }

//Soru 8) Bir isim listesini stringe çevirin ve arasına “-“ karakterini koyun. +++ Stringe çevrilmiyor
// Örnek; [“kaş”,”Kuşadası”,”Lüleburgaz”,,”Şişli”]; Expected=> kaş-kuşadası-lüleburgaz-Şişli
  nameList() {
    List<String> name = ["ali", "ayşe", "fatma", "kazım", "firuze"];
    // var convertToString = name.join(" ");
    String result = "";
    for (int i = 0; i < name.length; i++) {
      if (i == 0) {
        result += name[i];
      } else {
        result += "-${name[i]}";
      }
    }
  }

  sumNumbers() {
    List<int> numbers = [2, 3, 5, 6, 7, 9, 2, 4, 5];
    int sum = 0;
    for (int i = 0; i < numbers.length; i++) {
      sum = sum + numbers[i];
    }
    log(sum.toString());
  }

//Soru 9) “0.8” ve “0.9” string sayılarını double’a çevirip toplama yapınız
  convertToDouble() {
    String firstNum = "0.8.0";
    String secondNum = "0,4"; // double sayı
    double parsefirstNumber =
        double.tryParse(firstNum.replaceAll(".", "")) ?? 0;
    double parseSecondNumber = double.parse(secondNum.replaceAll(",", "."));
    String sum = (parseSecondNumber + parsefirstNumber).toStringAsFixed(1);

    log("Double sayıların toplamı: $sum");

    // var forFirstConvert = double.parse(num);
  }
//Soru 10) Bir diziyi belli bir karakterden sonra bölerek ikisinide arasında boşluk
//olacak sekilde örnekteki beklendiği gibi konsola yazdırınız. Örnek; ahmet*muhsin => “Ahmet Muhsin”

  newStringEdit() {
    String name = " ahmet?muhsin";
    String firstName = name.split("?").first;
    String lastName = name.split("?").last;
    firstName = firstName.trim().substring(0, 1).toUpperCase() +
        firstName.trim().substring(1);
    lastName = lastName.substring(0, 1).toUpperCase() + lastName.substring(1);
    log("$firstName $lastName");
  }
//  10 - Bir liste içinde tekrar eden elemanları bulan bir Flutter fonksiyonu yazın. ----
//Örneğin, [1, 2, 3, 2, 4, 5, 5] listesinde tekrar eden elemanlar [2, 5] olmalıdır.

  againNumbers() {
    List<int> numbers = [1, 2, 3, 2, 4, 5];
  }

//11 - Verilen iki liste (List) içeriğini birleştirip yeni bir liste oluşturan bir Flutter fonksiyonu yazın.   +++
// Örneğin: List<int> list1 = [1, 2, 3,4]; List<int> list2 = [4,4, 5, 6]; sonucunda [1, 2, 3, 4, 5, 6] listesini döndüren bir fonksiyon yazın.

  unifiedList() {
    List<int> list1 = [1, 2, 3];
    List<int> list2 = [4, 5, 6];

    list1.addAll(list2);
    log(list1.toSet().toString());
  }

// 12* Verilen bir dizeyi (string) parçalayarak kelime listesine dönüştüren bir Flutter fonksiyonu yazın. +++++
//Örneğin, "Bu bir Flutter algoritma sorusu" dizesini ["Bu", "bir", "Flutter", "algoritma", "sorusu"] şeklinde bir liste haline getiren bir fonksiyon yazın.
  splitedWods() {
    String words = "Bu bir flutter algoritma sorusu";
    var splited = words.split(" ");
    log(splited.toString());
  }

// 13* Bir listede bir sayının kaç tane tek kaç tane çift sayı olduğunu kontrol eden dart kodunu yazınız.
// [1,3,4,6,7] =  Expected =>2 adet çift 3 adet tek sayı vardır.  +++
  oddAndeven() {
    List<int> oddNumbersList = [];
    List<int> evenNumbersList = [];
    List<int> numbers = [1, 3, 4, 6, 7, 9, 11];

    // oddNumbers = numbers.where((element) => element.isOdd).length;
    // evenNumbers = numbers.where((element) => element.isEven).length;
    // log("$oddNumbers tane tek sayı vardır.");
    // log("$evenNumbers tane çift sayı vardır.");

    //bunada bi bak****************

    for (var i = 0; i < numbers.length; i++) {
      if (numbers[i].isOdd) {
        oddNumbersList.add(numbers[i]);
      } else if (numbers[i].isEven) {
        evenNumbersList.add(numbers[i]);
      }
    }
    log("${evenNumbersList.length} tane tek sayı vardır. Bu sayılar ${evenNumbersList.toString()}");
    log("${oddNumbersList.length} tane çift sayı vardır.  Bu sayılar ${oddNumbersList.toString()}");
  }

//14   - [1,2,3,4,5,6,7]ve [3,4,5,7,8,9]  listelerinde aynı elemanları bulup yazdırınız. Expected => [3,4,5,7] -----

  similarCode() {
    List<int> list1 = [1, 2, 3, 4, 5, 6, 7];
    List<int> list2 = [3, 4, 5, 7, 8, 9];

    List<int> similarList = [];

    // for (int element in list1) {
    //   if (list2.contains(element)) {
    //     similarList.add(element);
    //   }
    // }
    // for (int i = 0; i < list1.length; i++) {
    //   if (list2.contains(list1[i])) {
    //     similarList.add(list1[i]);
    //   }
    // }

    similarList = list1.where((element) => list2.contains(element)).toList();
    log(similarList.toString());
    log("Birinci listenin elemanları: ${list1.toString()}\nİkinci listenin elemanları: ${list2.toString()}");
  }

// 15- 20102023 sayısını 20-10-2023’e çevirin

  history() {
    String historyString = "20102023";
    String day = "";
    String mount = "";
    String year = "";
    day = historyString.substring(0, 2);
    mount = historyString.substring(2, 4);
    year = historyString.substring(4, 8);

    log("$day - $mount - $year");
  }

//16 - “Ben flutter developerım” cümlesini “Ben Flutter Developerım” olarak değiştiriniz ----

  neywWrite() {
    String dev = "ben flutter developerım";
    var run = dev.split(" ").where((element) => element == element);
    log(run.toString());
  }

// 17- Map<String, String> countryCapital = {  'USA': 'Washington, D.C.', 'India': 'New Delhi',   ++++
// 'China': ‘’,’Türkiye’:’Ankara’,’Romanya’:’’}; bu map yapısında valuesı boş olmayan değerleri yazdırınız.
//  Expected=> Türkiye = Ankara, India = New Delhi

  countriesMap() {
    Map<String, String> countryCapital = {
      'USA': 'Washington, D.C.',
      'India': 'New Delhi',
      'China': "",
      "Türkiye": "Ankara",
      "Romanya": ""
    };
    Map<String, dynamic> map = countryCapital.map((key, value) {
      if (value != "") {
        return MapEntry(key, value);
      }
      return const MapEntry("", "");
    });
    map.removeWhere((key, value) => key == "");
    map.map((key, value) {
      log("$key = $value");
      return MapEntry(key, value);
    });

    // countryCapital.removeWhere((key, value) => value.isNotEmpty == false);

    // log(countryCapital.toString());
  }
}
//   Soru 1) dışarıdan list int parametresi alan ve sadece tek sayilari toplayan dart programini yazin  +++

sumOddNumbers(List<int> sample) {
  var sampleOddControl = sample.where((element) => element.isOdd);
  if (sampleOddControl.isNotEmpty) {
    var oddTotalResult =
        sampleOddControl.reduce((value, element) => element + value);

    log(oddTotalResult.toString());
  }
}

// Soru 2) Verilen sayinin faktöriyelini alan dart fonksiyonunu yazınız
factorialCalculator({int number = 5}) {
  // 3! = 3.2.1 =6
  int factorial = 1;
  // // for (int i = 1; i <= number; i++) {
  // //   log(i.toString());
  // //   factorial *= i;
  // // }
  // int i = 1;
  // while (i < (number + 1)) {
  //   factorial *= i; // factorial = factorial * i;
  //   i++;
  // }

  // log(factorial.toString());

  List<int> numbers = [];
  for (int i = 1; i <= number; i++) {
    numbers.add(i);
  }

  // log(numbers.toString());

  numbers.map((e) => factorial *= e).toList();
  log(factorial.toString());
}

// Soru 3) [23,45,16,20,30,57,60] dizisinde hem 4 e hemde 5 e bölünen sayıları bulup loga yazdiriniz.

divisibleNumbers() {
  List<int> numbers = [23, 45, 16, 21, 30, 57, 61, 4, 81];
  List<int> diviableNumbers = [];
  var four = 4;
  var five = 5;

  // for (var i = 0; i < numbers.length; i++) {
  //   if (numbers[i] % four == 0 && numbers[i] % five == 0) {
  //     diviableNumbers.add(numbers[i]);
  //   }
  // }

  numbers.removeWhere((element) => element % four != 0 || element % five != 0);
  if (numbers.isEmpty == true) {
    log("Bu listede 4 ve 5'e bölünebilen sayı bulunamadı");
    return;
  }
  log("4 ve 5 sayısına bölünen sayılar: $numbers");
}

// Soru 4) Bir telefon numarasının 11 haneli olup olmadığıni ve başınin 05 ile basladigini kontrol edin. Beklenen => 05xx xxx xx xx

