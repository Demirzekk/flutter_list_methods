import 'dart:developer';

class StringMethods {
  mySubstring(List list) {
    String sample = "Welcome to Flutter";

    list = list.map((e) => e[0].toLowerCase() + e.substring(1)).toList();
  }

  myStarwith() {
    String sample = "+90 505 555 55 55";

    var result = sample.startsWith("+90", 0);
    if (result == false) {
      sample = "+90 $sample";
    }
    log("Türkiye numarasını mı? $sample");
  }

  myEndwith() {
    String sample = "zekk@hotmail.com";

    var result = sample.endsWith(
          "gmail.com",
        ) ||
        sample.endsWith(
          "hotmail.com",
        );
    if (result == false) {
      sample = "+90 $sample";
    }
    log("Türkiye numarasını mı? $result");
  }

  mySplit() {
    String sample = "Zekai Demir";

    var result = sample.split(" ");
    log("Soyadı: ${result.last}");
  }

  myReplaceAll() {
    String sample = "NAME bey, hoşgeldiniz!";
    String name = "Turan";
    var result = sample.replaceAll("NAME", name);
    log("Soyadı: $result");
  }

  myReplaceFirst() {
    String sample = "NAME bey, NAME hoşgeldiniz!";
    String name = "Turan";
    var result = sample.replaceFirst("NAME", name);
    log("Soyadı: $result");
  }

  myJoin() {
    String sample = "Zekai Demir";
    sample = sample.split(" ").join(" ");
    log(sample);
  }

  myTrim() {
    String sample = "zekk@  mail.com    ";
    log(sample.trim().replaceAll(" ", ""));
  }

  myJoinToSetReplaceExample() {
    String sample = "NAME bey, NAME hoşgeldiniz!";

    String name = "Turan";
    var result = sample.split(" ").toSet().join(" ").replaceAll("NAME", name);
    log(result.toString());
  }

  myAllMatches() {
    String sample = "Doğrulama kodunuz: 123456 4568";
    final reg = RegExp(r'(\d+)');

    var result = reg
        .allMatches(sample)
        .map((e) => e.group(0))
        .join(" ")
        .split(" ")
        .first;

    log("Sms doğrulama kodu: $result");
  }

    myStarwithExample() {
    // startswith in index numarası ne ise oradan başlar okumaya ve
    // Stringin içinde key varmı diye bakar true false döndürür
    String sample = "33 Yz 543";

    var result = sample.startsWith("YD", 3);
    if (result == false) {
      sample = "Muayene geçerlilik için  YD olmalıdır. ";
    }
    log("Mersin gülnar plakası $sample");
  }

    myEndwithExample() {
    String titleName = "Barış uzun sürmedi.";

    bool control = titleName.endsWith(".");
    if (control == false) {
      titleName = "başlığı bitirmek için . koyun. örnek: $titleName. ";
    }
    log(titleName);
  }

   mySplitExample() {
    String playRoom = "playstation, cinema,  cafe, bar";
    List result = playRoom.split(", ");
    log("alışveriş merkezinde $result faaliyetlerimiz vardır.");
  }
   myReplaceAllExamle() {
    String thisDate = "2023";
    String date = "18.12.2010";
    String result = date.replaceAll("2010", thisDate);
    log(result);
  }

    myReplaceFirstExample() {
    String newCovidName = "Coscovid";
    String vaksinaCode = "Covid 20 ,Covid 19 , Covid 18";
    var result = vaksinaCode.replaceFirst("Covid", newCovidName);
    log(result);
  }
   myJoinExample() {
    String sample = "TR 1429481501 313114";
    // regex ile 12 hane say daha sonra bu metodu uygula 5001 için 
    var result = sample.split("TR").join("1001");
    log(result);
  }

}
