class StudentModel {
late  String? name;
late  String? surname;
late  int? age;
 late int? classroom;
late  String? gender;
late  double? gradeAvarege;

  StudentModel(this.name, this.surname, this.age, this.classroom, this.gender,
      this.gradeAvarege);

  @override
  String toString() {
    return 'StudentModel(name: $name, surname: $surname, age: $age, classroom: $classroom, gender: $gender, gradeAvarege: $gradeAvarege)';
  }

  StudentModel.fromJson(Map<String, dynamic> json) {
    name = json[name];
    surname = json[surname];
    age = json[age];
    classroom = json[classroom];
    gender = json[gender];
    gradeAvarege = json[gradeAvarege];
  }
  toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["name"] = name;
    json["surname"] = surname;
    json["age"] = age;
    json["classroom"] = classroom;

    json["gender"] = gender;
    json["gradeAvarege"] = gradeAvarege;
  }
}
