class UserNameList {
  List<String> allocate({int begin = 0, int finish = 5}) {
    List<String> userAllocate = [];
    if (begin == 0 && finish == 0) {
      begin = 0;
      finish = 5;
    }
    if (finish > userLists.length) {
      finish = userLists.length;
    }
    userAllocate = userLists.sublist(begin, finish);
    return userAllocate;
  }

  List<String> userLists = [
    "osman",
    "hamdi",
    "mehmet",
    "rauf",
    "ziya",
    "selahattin",
    "sema",
    "sena",
    "halide",
    "mert",
    "suna",
    "şamil",
    "sinan",
    "ayşe",
    "ayşegül",
    "berna",
    "tuğçe",
    "nazif",
    "rümeysa",
    "sümeyra",
    "rüveyda",
    "sinan",
    "ayşe",
    "ayşegül",
    "berna",
    "tuğçe",
    "nazif",
    "rümeysa",
  ];
}
