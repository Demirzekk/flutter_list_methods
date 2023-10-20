class StudentModel {
  final String name;
  final String surname;
  final int age;
  final int classroom;
  final String gender;
  final double gradeAvarege;

  StudentModel(this.name, this.surname, this.age, this.classroom, this.gender,
      this.gradeAvarege);

  @override
  String toString() {
    return 'StudentModel(name: $name, surname: $surname, age: $age, classroom: $classroom, gender: $gender, gradeAvarege: $gradeAvarege)';
  }
}
