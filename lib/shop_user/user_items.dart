class UserNameList {
  List<String> allocate({int begin = 0, int limit = 5}) {
    List<String> userAllocate = [];

    userAllocate = userLists.sublist(begin,
        begin + limit > userLists.length ? userLists.length : begin + limit);
    return userAllocate;
  }

  List<String> userLists = [
    "Yusuf",
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
  ];
}
