class Studients {
  late final String id;
  late final String name;
  late final String _date;
  late final int scoreMath;
  late final int scoreVan;
  late final int scoreAnh;
  Studients(this.id, this.name, this._date, this.scoreMath, this.scoreVan,
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
}

void main(List<String> args) {
  var Studient1 = new Studients("1", "tung", "2001", 10, 8, 5);
  Studient1.getInfo();
}
