import 'dart:developer';

import 'package:flutter_list_methods/student_sample/student_model.dart';

class StudentViewModel {
// Aynı sınıftan olan öğrencileri getirin

  List<StudentModel> studentModelList = [
    StudentModel("Ahmet", "Muhsin", 10, 5, "Erkek", 44.3),
    StudentModel("Elif", "Can", 11, 6, "Kız", 55.0),
    StudentModel("Ayşe", "nur", 9, 4, "Kız", 58.0),
    StudentModel("Kazım", "Kaz", 10, 5, "Erkek", 50),
    StudentModel("Yasir", "mutlu", 13, 7, "Erkek", 56.0),
    StudentModel("Kazım", "Yılmaz", 5, 5, "Erkek", 55.0),
  ];

  getStudentSameClass() {
    List<StudentModel> sameClass = [];
    sameClass = studentModelList
        .where((StudentModel student) => student.classroom == 5)
        .toList();
    List.generate(sameClass.length, (index) {
      log(sameClass[index].toString());
    });
  }
  // Soru 1) Bir önceki yaptığımız dersteki student model listesini kullanarak, öğrenci ismine göre arama yapın.

  List<StudentModel> searchStudent(List<StudentModel> students) {
    // for (var i = 0; i < studentModel.length; i++) {
    //   if (studentModel[i].name?.toLowerCase().contains("kazım".toLowerCase()) ??
    //       false) {
    //     log("Aranan öğrenci: ${studentModel[i]}");
    //     return;
    //   }
    // }

    final result = students
        .where((element) =>
            element.name?.toLowerCase().contains("kazım".toLowerCase()) ==
                true &&
            element.surname?.toLowerCase().contains("yılmaz".toLowerCase()) ==
                true)
        .toList();
    log("Aranan öğrenci: ${result.toString()}");
    return result;
  }

//   // Soru 2) Yine student model listesini kullanarak bu listedeki öğrencilerin not ortalamasını alıp genel olarak ortalama puanı ortaya cikarin
  studentAvarage() {
    var totalStudentLenght = studentModelList.length;
    // for (var i = 0; i < totalStudentLenght; i++) {
    //   var tit = studentModel.map((e) => e.gradeAvarege ?? 0.0);
    //   var totalPoint = tit.reduce((value, element) => value + element);
    //   var result = totalPoint / totalStudentLenght;
    //   log("sınıfın genel not ortalaması $result");
    // }
    final res = studentModelList
        .map((e) => e.gradeAvarege)
        .reduce((value, element) => (value ?? 0) + (element ?? 0));
    double avarage = (res ?? 0) / totalStudentLenght;
    log("Ortalama: $avarage");
  }

//   // Soru 3) Listeye bir öğrenci ekleyin.
  listAddStudent() {
    List<StudentModel> newStudent = [
      StudentModel("faruk", "fazıl", 12, 6, "Erkek", 59.0),
      StudentModel("Ahmet Muhsin", "fazıl", 15, 6, "Erkek", 59.0),
      StudentModel("melisa", "kara", 13, 6, "kadın", 59.0),
    ];
    // studentModel.add(newStudent[1]);
//listenin ilk basına ekleme
    studentModelList.insert(0, newStudent[1]);
    // tüm listeyi diğer listeye ekleme
    // studentModel.addAll(newStudent);
    var aloneName = studentModelList.map((e) => e.name).toList();

    log(aloneName.toString());
  }
//   // Soru 4) Bu listeden Elif adindaki öğrenciyi bulup notunu 2 puan yükseltin

  listRemoveName() {
    int addPoint = 2;
    for (var i = 0; i < studentModelList.length; i++) {
      if (studentModelList[i]
              .name
              ?.toLowerCase()
              .contains("Elif".toLowerCase()) ==
          true) {
        studentModelList[i] = studentModelList[i].copyWith(
            name: "Zeynep",
            gradeAvarege: (studentModelList[i].gradeAvarege ?? 0) + addPoint);

        log(studentModelList[i].toString());

        return;

        // studentModel.map((e) => studentModel[i].gradeAvarege - 2.0);
      }
    }
  }

//   // Soru 5) Listeye aynı öğrenciden aynı bilgiler ile bir bir kayit ekleyin. Ve iki kez kayit olan öğrencilerin kaydını bire düşürün
  againRegisterStudent() {
    // List<StudentModel> newRegisterStudentList = [
    //   StudentModel("Ahmet", "Muhsin", 10, 5, "Erkek", 55.0),
    //   StudentModel("Elif", "Can", 11, 6, "Kız", 55.0),
    //   StudentModel("Ayşe", "nur", 9, 4, "Kız", 58.0),
    //   StudentModel("Kazım", "Kaz", 10, 5, "Erkek", 55.0),
    //   StudentModel("Yasir", "mutlu", 13, 7, "Erkek", 56.0),
    //   StudentModel("melih", "cevdet", 13, 7, "Erkek", 56.0),
    // ];
    // studentModel.toSet().addAll(newRegisterStudentList);
    // log(studentModel.toString());
    // var model = StudentModel("Ahmet", "Muhsin", 10, 5, "Erkek", 48.0);
    for (int i = 0; i < studentModelList.length; i++) {
      StudentModel? model =
          (studentModelList[i].name?.toLowerCase() == "Ahmet".toLowerCase()) ==
                  true
              ? studentModelList[i]
              : null;
      if (studentModelList[i] == model) {
        studentModelList.remove(studentModelList[i]);
      }

      // if (studentModel[i].name?.toLowerCase().contains("Ahmet".toLowerCase()) ==
      //         true &&
      //     studentModel[i]
      //             .surname
      //             ?.toLowerCase()
      //             .contains("Muhsin".toLowerCase()) ==
      //         true) {
      //   studentModel.remove(studentModel[i]);
      // }
    }

    studentModelList.map((e) {
      log(e.toString());
      return e;
    }).toList();
  }

  // soru6) Aynı sıfıtan olan öğrencileri getirin
  sameClassStudent() {
    for (var i = 0; i < studentModelList.length; i++) {
      if (studentModelList[i].classroom == 5) {
        log(studentModelList[i].toString());
      }
    }
  }

  // soru 7: student modeline göre  notu 50'nin altında olan öğrenciler dersten kalacaktır.

  // TODO null check'siz

  repeatingAGrade() {
    for (var i = 0; i < studentModelList.length; i++) {
      if ((studentModelList[i].gradeAvarege ?? 0) < 50) {
        var gradeAgain = studentModelList[i].name;
        log("sınıf tekrarı yapacak öğrenciler $gradeAgain");
      }
    }
  }

}
