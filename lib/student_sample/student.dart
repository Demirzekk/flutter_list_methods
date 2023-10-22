import 'dart:developer';

import 'package:flutter_list_methods/student_sample/student_model.dart';

class StudentViewModel {
// Aynı sınıftan olan öğrencileri getirin
  List<StudentModel> studentModel = [
    StudentModel("Ahmet", "Muhsin", 10, 5, "Erkek", 55.0),
    StudentModel("Elif", "Can", 11, 6, "Kız", 55.0),
    StudentModel("Ayşe", "nur", 9, 4, "Kız", 55.0),
    StudentModel("Kazım", "Kaz", 10, 5, "Erkek", 55.0),
    StudentModel("Yasir", "mutlu", 13, 7, "Erkek", 55.0),
  ];

  getStudentSameClass() {
    List<StudentModel> sameClass = [];
    sameClass = studentModel
        .where((StudentModel student) => student.classroom == 5)
        .toList();
    List.generate(sameClass.length, (index) {
      log(sameClass[index].toString());
    });
  }
  // Soru 1) Bir önceki yaptığımız dersteki student model listesini kullanarak, öğrenci ismine göre arama yapın.

  studentNameLenght() {}
  // Soru 2) Yine student model listesini kullanarak bu listedeki öğrencilerin not ortalamasını alıp genel olarak ortalama puanı ortaya cikarin
  studentAvarage() {
    var avaragePoint = studentModel.reduce(
        (StudentModel value, StudentModel element) =>
            value + element.gradeAvarege);
    var avarageTotal = (avaragePoint / studentModel.length);
  }

  // Soru 3) Listeye bir öğrenci ekleyin.
  listAddStudent() {
    List newStudent = ["çağdaş ", "ata", 12.4, "erkek", 73];

    studentModel.add(newStudent);
  }
  // Soru 4) Bu listeden can adindaki öğrenciyi bulup notunu 2 puan yükseltin

  listRemoveName() {
    for (var i = 0; i < studentModel.length; i++) {
      final StudentModel forCan;
      if (forCan.name == "can") {
        studentModel.remove(studentModel[i]);
      }
    }
  }


  // Soru 5) Listeye aynı öğrenciden aynı bilgiler ile bir bir kayit ekleyin. Ve iki kez kayit olan öğrencilerin kaydını bire düşürün


}








