import 'dart:math';

void main() {
  digitcounter(12);
  int passlength = 10;
  randompass(passlength);
  myltplicationTable(5);

  double oddlimit = 50;
  sumOfOddNumbers(oddlimit);
}

digitcounter(double totaldigit) {
  int count = 0;
  if (totaldigit == 0) {
    count = 1;
  }

  while (totaldigit >= 1) {
    totaldigit = totaldigit / 10;
    count++;
    print("The Number of digit:$count");
  }
}

randompass(int passlength) {
  String password = '';
  int i = 0;
  String chars = 'StanruteTechnologies0123456789!@#\$%^&*()_-+={}[]|;:,.<>?';
  Random random = Random();
  while (i < passlength) {
    int index = random.nextInt(chars.length);
    password += chars[index];
    i++;
  }
  print(password);
}

myltplicationTable(int tablenum) {
  int i = 1;
  int maxmulti = 10;
  while (i < maxmulti) {
    i++;
    print("$tablenum x $i = ${tablenum * i}");
  }
}

sumOfOddNumbers(double limitodd) {
  double sum = 0;
  int num = 1;
  do {
    sum += num;
    num += 2;
  } while (num <= limitodd);
  print("The sum of odd number 1 to $limitodd: $sum");
}
