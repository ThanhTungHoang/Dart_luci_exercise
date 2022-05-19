import 'dart:io';

void main() {
  usingList();
  // run1To1000PrintEvenNotGreater400();
  // print1To10000CheckNumerDivisible3And5();
  // divisibleFor3FromList();
  // var classInformation = {
  //   "id": 12,
  //   "name": "Báo Flutter 1.2",
  //   "description": " Lớp học lập trình Flutter, hot line: 0349582808"
  // };
  // print(classInformation["description"]);
}

void usingList() {
  List list5 = [4, 3, 5, 8];
  // List<int> list = new List<>(5);
  List<int> data = [3, 1, 2];
  // List<int> data = [];
  int total = 0;
  print("Input a, b, c");
  // int a = stdin.readLineSync();
  // int a = int.parse(stdin.readLineSync()!);
  // data.add(a);
  // int b = int.parse(stdin.readLineSync()!);
  // data.add(b);
  // int c = int.parse(stdin.readLineSync()!);
  // data.add(c);
  //----------- not run in VS code------------------
  print(data);
  // print(data.length);
  for (int i = 0; i < data.length; i++) {
    total = total + data[i];
  }
  double sum = total / data.length;
  print("Tb cộng: $sum");
  for (int i = 0; i < data.length; i++) {
    for (int j = i + 1; j < data.length; j++) {
      if (data[i] > data[j]) {
        int temp = data[i];
        data[i] = data[j];
        data[j] = temp;
      }
    }
  }
  print("Sắp xếp: $data");
}

void run1To1000PrintEvenNotGreater400() {
  print("run!");
  int i = 1;
  int a = 0;
  List<int> data = [];

  for (i = 0; i <= 1000; i++) {
    if (i % 2 == 0) {
      a = a + i;
      data.add(a);
      if (a > 400) {
        // print("break");
        break;
      }
    }
  }
  // print(data);
  data.removeLast();
  print(data);
}

void print1To10000CheckNumerDivisible3And5() {
  print("run!");
  int i3 = 0;
  int i5 = 0;

  for (int i = 0; i <= 10000; i++) {
    if (i % 3 == 0) {
      i3++;
    } else if (i % 5 == 0) {
      i5++;
    }
  }
  print("Divisible fo 3: $i3");
  print("Divisible fo 5: $i5");
}

void divisibleFor3FromList() {
  List<int> list5 = [4, 3, 10, 9, 15, 7, 6, 5, 8];
  List<int> data = [];
  for (int i = 0; i < list5.length; i++) {
    // print(list5[i]);
    if (list5[i] % 3 == 0) {
      data.add(list5[i]);
      // print(list5[i]);
    }
  }
  print(data);
}
