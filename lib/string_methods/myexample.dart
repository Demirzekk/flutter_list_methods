 import 'dart:developer';

myStarwithExample() {
    // startswith in index numarası ne ise oradan başlar okumaya ve
    // Stringin içinde key varmı diye bakar true false döndürür
    String sample = "33 T 543";

    var result = sample.startsWith("T", 2);
    if (result == false) {
      sample = "Muayene geçerlilik için  YD olmalıdır. ";
    }
    log("Mersin gülnar plakası $sample");
  }

  myEndwithExample() {
    String titleName = "Barış uzun sürmedi.";

    bool control = titleName.endsWith(".");
    if (control == false) {
      log("başlığı bitirmek için . koyun. örnek: $titleName. ");
      titleName = "$titleName.";
    }

    log(titleName);
  }

  mySplitExample() {
    String playRoom = "playstation, cinema,          cafe, bar";
    List result = playRoom.replaceAll(" ", "").split(",");
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
    
    var result = sample.split("TR").join("1001");
    log(result);
  }
