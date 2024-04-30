import 'dart:math';

void main() {
  digitcounter(12);
  int passlength = 10;
  randompass(passlength);
  myltplicationTable(5);

  double oddlimit = 50;
  sumOfOddNumbers(oddlimit);
}

// Q1. Write a Dart program that counts the number of digits in a given number using a while loop.
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
// Q2. Implement Dart code to generate a random password of a given length using a while loop.

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

// Q3.Implement Dart code to print the multiplication table of a given number using a while loop.

myltplicationTable(int tablenum) {
  int i = 1;
  int maxmulti = 10;
  while (i < maxmulti) {
    i++;
    print("$tablenum x $i = ${tablenum * i}");
  }
}

// Q4. Write a Dart program to calculate the sum of odd numbers from 1 to 50 using a do-while loop.

sumOfOddNumbers(double limitodd) {
  double sum = 0;
  int num = 1;
  do {
    sum += num;
    num += 2;
  } while (num <= limitodd);
  print("The sum of odd number 1 to $limitodd: $sum");
}
