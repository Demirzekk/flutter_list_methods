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
}
