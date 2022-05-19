//Bai 1////////////////////////
import 'dart:ffi';

class ChuNhat {
  late int chieudai;
  late int chieurong;
// contructor
  // ChuNhat();
  ChuNhat({required this.chieudai, required this.chieurong});
  //method
  double tinhChuVi() {
    int a = getChieudai;
    int b = getChieurong;
    double sum = (chieudai + chieurong) / 2;
    return sum;
  }

  int tinhDienTich() {
    int a = getChieudai;
    int b = getChieurong;
    int sum = chieudai * chieurong;
    return sum;
  }

  void getInfo() {
    print("Hinh chu nhat");
    print("chieudai: $getChieudai");
    print("chieurong: $getChieurong");
    print("chu vi: $getTinhChuVi");
    print("dien tich: $getTinhDienTich");
  }

//getter and setter
  get getTinhChuVi => this.tinhChuVi();
  get getTinhDienTich => this.tinhDienTich();

  get getChieudai => this.chieudai;

  set setChieudai(chieudai) => this.chieudai = chieudai;

  get getChieurong => this.chieurong;

  set setChieurong(chieurong) => this.chieurong = chieurong;
}

class Vuong extends ChuNhat {
  late int a;
  Vuong(int n) : super(chieudai: n, chieurong: n) {
    this.a = chieudai;
    this.a = chieurong;
  }
  @override
  double tinhChuVi() {
    double sum = 4 * a.toDouble();
    return sum;
  }

  @override
  int tinhDienTich() {
    int sum = a * a;
    return sum;
  }

  @override
  void getInfo() {
    print("Hinh vuong");
    print("Canh:: $a");
    print("chu vi: $getTinhChuVi");
    print("dien tich: $getTinhDienTich");
  }
}

// Bai 2 ////////////////////////
abstract class PersonSample {
  void input();
  void display();
}

class Person extends PersonSample {
  late String id;
  late String name;
  late int _age;

  Person({required id, required name, required age}) {
    this.id = id;
    this.name = name;
    this._age = age;
  }

  /// setter and getter
  get getId => this.id;

  set setId(id) => this.id = id;

  get getName => this.name;

  set setName(name) => this.name = name;

  get getAge => this._age;

  set age(value) => this._age = value;
  @override
  void input() {}
  @override
  void display() {}
}

class student extends Person {
  late int _mark;
  late String _grade;
  student(id, name, age, mark, garde) : super(id: id, name: name, age: age) {
    this.id = id;
    this.name = name;
    this.age = age;
    this._mark = mark;
    this._grade = garde;
  }
  // method
  @override
  void display() {
    print("Show Information");
    print("Id: $getId");
    print("Name: $getName");
    print("Age: $getAge");
    print("Mark: $getMark");
    print("Grade: $getGrade");
  }

  //seter and getter//
  get getMark => this._mark;

  set mark(value) => this._mark = value;

  get getGrade => this._grade;

  set grade(value) => this._grade = value;
}

void main() {
  // var chunhat1 = new ChuNhat(chieudai: 2, chieurong: 3);
  // var chunhat2 = new ChuNhat(chieudai: 3, chieurong: 4);
  // var hinhvuong1 = new Vuong(5);
  // chunhat1.getInfo();
  // chunhat2.getInfo();
  // hinhvuong1.getInfo();
  ///////////////////////////////
  var student1 = new student("1", "Thanh tung", 21, 5, "medium");
  student1.display();
}
