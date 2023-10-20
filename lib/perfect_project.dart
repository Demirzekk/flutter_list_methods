import 'dart:developer';

class PerfectProject {
  static PerfectProject? _instance;
  static PerfectProject get instance => _instance ??= PerfectProject._();
  PerfectProject._();
  factory PerfectProject() => _instance ??= PerfectProject._();
  //1 //   String iban = "18256598572232895001";  expected:  "TR 1825 6598 4432 5789 5001";

  ///2 bir tam sayı listesindeki elemanları toplayan program +

  question2() {
    List<int> numbers = [1, 2, 3, 4, 5];
    var result = numbers.reduce((value, element) => element + value);
    log(result.toString());
  }

  /// / 3  - Bir liste içindeki en büyük ve en küçük öğeyi bulan programı yazın. +

  question3() {
    List<int> numbers = [1, 2, 3, 4, 5];
    numbers.sort();
    log("listenin en küçük elemanı ${numbers.first} en büyük elemanı ise ${numbers.last}' tir");
  }

  ///
  /// //4 - Bir listedeki öğelerin sırasını tersine çeviren programı yazın. +
  ///
  question6() {
    List<int> numbers = [1, 2, 3, 4, 5];
    numbers.sort();
    var result = numbers.reversed;
    log(result.toString());
  }

  /// //5 - Bir liste içindeki tüm tek ve çift sayıları ayıran programı yazın.

  question7() {
    List<int> numbers = [5, 3, 7, 1, 2, 4, 6];

    var odd = numbers.where((element) => element.isOdd);
    var even = numbers.where((element) => element.isEven);
    log("tek sayılar $odd : Çift sayılar $even");
  }

  ///
  ///
  /// /6/ - Bir tamsayı listesinin ortalamasını hesaplayan programı yazın.  +
  ///
  question4() {
    List<int> numbers = [5, 3, 7, 1, 2, 4, 6];

    var total = numbers.reduce((value, element) => value + element);
    var result = total / numbers.length;
    log(result.toStringAsFixed(0));
  }

  ///
  ///
  /// /7 - Bir sayı listesini büyükten küçüğe sıralayan programı yazın.  ( -)
  ///
  question30() {
    List<int> numbers = [5, 3, 7, 1, 2, 4, 6];
    numbers.sort();
    var kim = numbers.reversed;

    log(kim.toString());
  }

  ///
  /// /8/ - Bir listede belirli bir öğenin ilk indeksini bulan  programı yazın.   +
  ///
  /// 9// - İki liste verildiğinde, bu iki listeyi birleştiren programı yazın.   +
  ///
  ///10 Bir listeden belirli bir item bulan veya en yakın list itemlarını bulan programı yazın. +
  ///önemli ************* arama sayfası / filtreleme
  ///
  /////11 - Bir listeden belirli bir öğeyi kaldıran programı yazın.   +
  ///
  /// Soru 12) Mail@gmail. com => bu mailde ilk harf yanlışlıkla büyük girilmiş
//ve . com arasında boşluk bırakılmış. mail@gmail.com şeklinde tekrar console a yazdırınız.

// Soru13) List<String> names = [“can”,”mehmet”,”Yusuf”] => dizideki en uzun ismi bulup console’a yazdırın

// Soru14) +(90) 505 555 55 55 => bu numarayı console’a 90505555555 şeklinde yazdırınız ++++

// Soru15) +905559095090 bu numaranın Türkiye numarası olup olmadığını doğrulayınız  +++

//Soru 16) ana, kelek, pide, ada, yapay gibi kelimler palindrom kelimelerdir. Yani terstende okununca aynı => +++---eksik var
  //kelime ile karşılaşılır. Verilen bir string kelimenin palindrome bir kelime olup olmadığını bulan dart logicini yazınız.

  //Soru 17) Bir liste içinde bir nesnenin kaç kez tekranlandığını bulan dart logicini yazınız. +++  =>>> bi daha bak
//Örnek; [“kaş”,”Kuşadası”,”Lüleburgaz”,”kaş”,”Şişli”]; //Expected=> kaş kelimesi 2 kez geçmektedir.

//Soru 18) Bir isim listesini stringe çevirin ve arasına “-“ karakterini koyun. +++ Stringe çevrilmiyor
// Örnek; [“kaş”,”Kuşadası”,”Lüleburgaz”,,”Şişli”]; Expected=> kaş-kuşadası-lüleburgaz-Şişli

//Soru 19) “0.8” ve “0.9” string sayılarını double’a çevirip toplama yapınız  ----

//Soru 20) Bir diziyi belli bir karakterden sonra bölerek ikisinide arasında boşluk
//olacak sekilde örnekteki beklendiği gibi konsola yazdırınız. Örnek; ahmet*muhsin => “Ahmet Muhsin”

// soru 21) küçük harfle yazılmış bir isim listesinin ilk harflerini büyük yap.

// soru 22) kullanıcı doğum tarihini 10122010 şeklinde yazmış bunu gün ay yıl olarak ayır.

// soru 23) double türünde bir sayıyı yuvarla
// soru 24:  DaRt ve daRT kelimeleri literatür olarak aynı şeyi ifade etmekte.
//Ama bilgisayar ortamında DaRt==daRT=>false değeri döndermektedir. True değerini göndermesini sağlayın.

// 24* Bir listede bir sayının kaç tane tek kaç tane çift sayı olduğunu kontrol eden dart kodunu yazınız.
// [1,3,4,6,7] =  Expected =>2 adet çift 3 adet tek sayı vardır.  +++

//25   - [1,2,3,4,5,6,7]ve [3,4,5,7,8,9]  listelerinde aynı elemanları bulup yazdırınız. Expected => [3,4,5,7] -----

// 26- 20102023 sayısını 20-10-2023’e çevirin

//27 - “Ben flutter developerım” cümlesini “Ben Flutter Developerım” olarak değiştiriniz ----

// 28- Map<String, String> countryCapital = {  'USA': 'Washington, D.C.', 'India': 'New Delhi',   ++++
// 'China': ‘’,’Türkiye’:’Ankara’,’Romanya’:’’}; bu map yapısında valuesı boş olmayan değerleri yazdırınız.
//  Expected=> Türkiye = Ankara, India = New Delhi
}
