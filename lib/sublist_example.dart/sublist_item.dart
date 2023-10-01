class GetNameList {
  List<String> newListMethod({int count = 0, int subListMaxLength = 5}) {
    List<String> firstlist = [];
    if (count == 0 && subListMaxLength == 0) {
      count = 0;
      subListMaxLength = 5;
    }
    if (subListMaxLength > toNames.length) {
      subListMaxLength = toNames.length;
    }

    firstlist = GetNameList().toNames.sublist(count, subListMaxLength);

    return firstlist;
  }

  List<String> toNames = [
    "osman",
    "ahmet",
    "şule",
    "hamdi",
    "mustafa",
    "yusuf",
    "zeliha",
    "reşat",
    "fikri",
    "melisa",
    "melis",
    "muzaffer",
    "ayşe",
    "elif",
    "hasan",
    "halis",
    "şükrü",
    "fatma",
    "negis",
  ];
}
