void main() {
  // CheckEvenNumberUsingIf(1);
  // CheckEvenNumberUsingSwitchCase(2);
  // print(giaiThua(8));
  // PrintNumberLess25();
  // print1To50NotOver50();
  printEvenInSum1To15();
}

void checkEvenNumberUsingIf(int x) {
  if (x % 2 == 0) {
    print("$x is even");
  } else {
    print("$x is odd");
  }
}

void checkEvenNumberUsingSwitchCase(int x) {
  switch (x % 2) {
    case 0:
      {
        print("$x is even");
        break;
      }

    case 1:
      {
        print("$x is odd");
        break;
      }
    default:
  }
}

int giaiThua(int n) {
  if (n == 1) return 1;
  return n * giaiThua(n - 1);
}

void printNumberLess25() {
  List<int> data = [];
  int i;
  for (i = 0; i < 25; i++) {
    if (i % 2 == 0) {
    } else {
      data.add(i);
    }
  }
  print(data);
}

void print1To50NotOver50() {
  print("run!");
  int i = 1;
  int a = 0;
  while (true) {
    print(i);
    i++;
    a = a + i;
    if (a > 50) {
      print("break");
      break;
    }
  }
}

void printEvenInSum1To15() {
  List<int> data = [];
  int S = 0;
  for (int i = 1; i <= 15; i++) {
    S = S + i;
    // print(S);
    if (S % 2 == 0) {
      data.add(S);
    }
  }
  print(data);
}
