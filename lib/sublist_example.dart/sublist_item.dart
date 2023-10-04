class GetNameList {
  List<String> newListMethod({
    int min = 0,
  }) {
    List<String> firstlist = [];

    firstlist = GetNameList()
        .toNames
        .sublist(min, min + 5 > toNames.length ? toNames.length : min + 5);

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
  ];
}
