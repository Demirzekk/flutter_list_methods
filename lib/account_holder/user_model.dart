class UserModel {
  String? name;
  String? surname;
  String? eMail;
  String? password;
  bool? isLogin;
  int? phoneNumber;

  UserModel(
      {this.name,
      this.surname,
      this.eMail,
      this.isLogin = false,
      this.password,
      this.phoneNumber});

  @override
  String toString() {
    return 'UserModel(name: $name, surname: $surname, eMail: $eMail, password: $password, isLogin: $isLogin, phoneNumber: $phoneNumber)';
  }

//TODO from tamamlanacak
  UserModel.fromJson(Map<String, dynamic> json) {
    json["name"] = name;
  }

  //TODO bunlar tamamlanacak
  UserModel.toJson() {}

  UserModel copyWith({
    String? name,
    String? surname,
    String? eMail,
    String? password,
    bool? isLogin,
    int? phoneNumber,
  }) {
    return UserModel(name: name, surname: surname, eMail: eMail);
  }
}
