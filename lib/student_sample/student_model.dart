class StudentModel {
  String? name;
  String? surname;
  int? age;
  int? classroom;
  String? gender;
  double? gradeAvarege;

  StudentModel(this.name, this.surname, this.age, this.classroom, this.gender,
      this.gradeAvarege);

  @override
  String toString() {
    return 'StudentModel(name: $name, surname: $surname, age: $age, classroom: $classroom, gender: $gender, gradeAvarege: $gradeAvarege)';
  }

  StudentModel.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    surname = json["surname"];
    age = json["age"];
    classroom = json["classroom"];
    gender = json["gender"];
    gradeAvarege = json["gradeAvarege"];
  }
  toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["name"] = name;
    json["surname"] = surname;
    json["age"] = age;
    json["classroom"] = classroom;
    json["gender"] = gender;
    json["gradeAvarege"] = gradeAvarege;
    return json;
  }

  StudentModel copyWith({
    String? name,
    String? surname,
    int? age,
    int? classroom,
    String? gender,
    double? gradeAvarege,
  }) {
    return StudentModel(
      name ?? this.name,
      surname ?? this.surname,
      age ?? this.age,
      classroom ?? this.classroom,
      gender ?? this.gender,
      gradeAvarege ?? this.gradeAvarege,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is StudentModel &&
        other.name == name &&
        other.surname == surname &&
        other.age == age &&
        other.classroom == classroom &&
        other.gender == gender &&
        other.gradeAvarege == gradeAvarege;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        surname.hashCode ^
        age.hashCode ^
        classroom.hashCode ^
        gender.hashCode ^
        gradeAvarege.hashCode;
  }
}
