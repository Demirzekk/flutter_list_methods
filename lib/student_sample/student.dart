import 'dart:developer';

import 'package:flutter_list_methods/student_sample/student_model.dart';

class StudentViewModel {
// Aynı sınıftan olan öğrencileri getirin

  List<StudentModel> studentModel = [
    StudentModel("Ahmet", "Muhsin", 10, 5, "Erkek", 48.0),
    StudentModel("Elif", "Can", 11, 6, "Kız", 55.0),
    StudentModel("Ayşe", "nur", 9, 4, "Kız", 58.0),
    StudentModel("Kazım", "Kaz", 10, 5, "Erkek", 25.0),
    StudentModel("Yasir", "mutlu", 13, 7, "Erkek", 56.0),
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

  studentNameLenght() {
    String searchWord = "";
    for (var i = 0; i < studentModel.length; i++) {
      if (studentModel[i].name.toLowerCase().contains("kazım".toLowerCase())) {
        searchWord = studentModel[i].name;

        log("$searchWord bulundu");
      } else {
        log("aranan eşleşme bulunamadı");
      }
    }
  }

//   // Soru 2) Yine student model listesini kullanarak bu listedeki öğrencilerin not ortalamasını alıp genel olarak ortalama puanı ortaya cikarin
  studentAvarage() {
    var totalStudentLenght = studentModel.length;
    for (var i = 0; i < studentModel.length; i++) {
      var tit = studentModel.map((e) => e.gradeAvarege);
      var totalPoint = tit.reduce((value, element) => value + element);
      var result = totalPoint / totalStudentLenght;
      log("sınıfın genel not ortalaması $result");
    }
  }

//   // Soru 3) Listeye bir öğrenci ekleyin.
  listAddStudent() {
    List<StudentModel> newStudent = [
      StudentModel("faruk", "fazıl", 12, 6, "Erkek", 59.0),
      StudentModel("melisa", "kara", 13, 6, "kadın", 59.0),
    ];
    studentModel.add(newStudent.first);

    var aloneName = studentModel.map((e) => e.name);
    log("yeni liste : $studentModel");

    log(aloneName.toString());
  }
//   // Soru 4) Bu listeden can adindaki öğrenciyi bulup notunu 2 puan yükseltin

  listRemoveName() {
    int addPoint = 2;
    for (var i = 0; i < studentModel.length; i++) {
      if (studentModel[i].name.toLowerCase().contains("Elif".toLowerCase()) ==
          true) {
        var point = studentModel[i].gradeAvarege;
        var result = point + addPoint;
        log(result.toString());

        // studentModel.map((e) => studentModel[i].gradeAvarege - 2.0);
      }
    }
  }

//   // Soru 5) Listeye aynı öğrenciden aynı bilgiler ile bir bir kayit ekleyin. Ve iki kez kayit olan öğrencilerin kaydını bire düşürün
  againRegisterStudent() {
    List<StudentModel> newRegisterStudentList = [
      StudentModel("Ahmet", "Muhsin", 10, 5, "Erkek", 55.0),
      StudentModel("Elif", "Can", 11, 6, "Kız", 55.0),
      StudentModel("Ayşe", "nur", 9, 4, "Kız", 58.0),
      StudentModel("Kazım", "Kaz", 10, 5, "Erkek", 55.0),
      StudentModel("Yasir", "mutlu", 13, 7, "Erkek", 56.0),
      StudentModel("melih", "cevdet", 13, 7, "Erkek", 56.0),
    ];
    studentModel.toSet().addAll(newRegisterStudentList);
    log(studentModel.toString());
  }

  // soru6) Aynı sıfıtan olan öğrencileri getirin
  sameClassStudent() {
    for (var i = 0; i < studentModel.length; i++) {
      if (studentModel[i].classroom == 5) {
        log(studentModel[i].name.toString());
      }
    }
  }

  // soru 7: student modeline göre  notu 50'nin altında olan öğrenciler dersten kalacaktır.

  repeatingAGrade() {
    for (var i = 0; i < studentModel.length; i++) {
      if (studentModel[i].gradeAvarege < 50) {
        var gradeAgain = studentModel[i].name;
        log("sınıf tekrarı yapacak öğrenciler $gradeAgain");
      }
    }
  }
}
