// - Bir Employee objesi hazırlayın. İçerisinde name, surname ve salary ve bonus fieldları olsun.
// Bu Employee objesi tipinde 5 adetlik bir liste oluşturun. Salary fieldına maaş atamaları yapın.
//Ve maaşının yüzde 20sini yıllık alacağını bonus fieldına ekleyin.
//Son olarak isim ve prim olarak liste halinde hangi işcinin ne kadar prim alacağını loga yazdırınız.
// - Yukarıdaki örnekte yapıtığınız 5 adetlik Employe listesini json formatına dönüştürün ve loga yazdırınız

class EmployeeModel {
  String? name;
  String? surname;
  int? salary;
  int? bonus;

  EmployeeModel(
    this.name,
    this.surname,
    this.salary,
    this.bonus,
  );

  @override
  String toString() {
    return 'StudentModel(name: $name, surname: $surname, salary: $salary, bonus: $bonus)';
  }

  EmployeeModel.fromJson(Map<String, dynamic> json) {
    name = json["name"];
    surname = json["surname"];
    salary = json["salary"];
    bonus = json["bonus"];
  }
  toJson() {
    final Map<String, dynamic> json = <String, dynamic>{};
    json["name"] = name;
    json["surname"] = surname;
    json["salary"] = salary;
    json["bonus"] = bonus;
    return json;
  }
}
