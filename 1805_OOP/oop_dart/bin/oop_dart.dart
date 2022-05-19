class Students {
  late final String id;
  late final String name;
  late final String _date;
  late final int scoreMath;
  late final int scoreVan;
  late final int scoreAnh;
  Students(this.id, this.name, this._date, this.scoreMath, this.scoreVan,
      this.scoreAnh);
  //setter and getter!
  get getId => this.id;

  set setId(id) => this.id = id;

  get getName => this.name;

  set setName(name) => this.name = name;

  get date => this._date;

  set date(value) => this._date = value;

  get getScoreMath => this.scoreMath;

  set setScoreMath(scoreMath) => this.scoreMath = scoreMath;

  get getScoreVan => this.scoreVan;

  set setScoreVan(scoreVan) => this.scoreVan = scoreVan;

  get getScoreAnh => this.scoreAnh;

  set setScoreAnh(scoreAnh) => this.scoreAnh = scoreAnh;
  void getInfo() {
    print("Show Infor!!!!");
    print("Name: $getName");
    print("Id: $getId");
    print("Date: $date");
  }

  void getMediumScore() {
    print("Show medium score!!!!");
    int van = getScoreVan;
    int toan = getScoreMath;
    int anh = getScoreAnh;
    int total = (van + toan + anh);
    double sum = (total / 3);
    print("Medium score: $sum");
  }

  double getMediumScore1() {
    // print("Show medium score!!!!");
    int van = getScoreVan;
    int toan = getScoreMath;
    int anh = getScoreAnh;
    int total = (van + toan + anh);
    double sum = (total / 3);
    // print("Medium score: $sum");
    return sum;
  }

  void getStudentsGrading() {
    print("Show grading Student!!!!");
    int van = getScoreVan;
    int toan = getScoreMath;
    int anh = getScoreAnh;
    int total = (van + toan + anh);
    double sum = (total / 3);
    if (sum < 5) {
      print("grading Student: low");
    } else if (sum >= 5 && sum < 7) {
      print("grading Student: medium");
    } else if (sum >= 7 && sum <= 10) {
      print("grading Student: good");
    }
  }
}

void main() {
  Map<String, double> data = {};
  var Student1 = new Students("1", "tung", "2001", 10, 8, 5);
  Student1.getInfo();
  Student1.getMediumScore();
  Student1.getStudentsGrading();
  var Student2 = new Students("2", "thanh", "2004", 3, 7, 5);
  Student2.getInfo();
  Student2.getMediumScore();
  Student2.getStudentsGrading();
  var Student3 = new Students("3", "hoang", "2002", 5, 9, 6);
  Student3.getInfo();
  Student3.getMediumScore();
  Student3.getStudentsGrading();
  data[Student1.getName] = Student1.getMediumScore1();
  data[Student2.getName] = Student2.getMediumScore1();
  data[Student3.getName] = Student3.getMediumScore1();
  // data["b"] = 2;
  // data["c"] = 3;
  // print(data.values);
  // Tìm ra tên học sinh có điểm trung bình lớn nhất.
  double scoreStudent = 0.0;
  late String nameStudent;

  data.forEach((n, s) {
    if (s > scoreStudent) {
      scoreStudent = s;
      nameStudent = n;
    }
  });
  print("Student high average score: $nameStudent");
  ;
}
