import 'dart:math';

void main() {
  digitcounter(12);
  print("=====================");
  int passlength = 10;
  randompass(passlength);
  print("=====================");
  checkStringisEmpty('');
  print("=====================");
  myltplicationTable(5);
  print("=====================");

  double oddlimit = 50;
  sumOfOddNumbers(oddlimit);
  print("=====================");
  checkNumIsPositive(3);
  print("=====================");
  calculateFactorial(5);
  print("=====================");
  printPrimeNumber();
  print("=====================");
  naturalNumberInReverse(11);
  print("=====================");
  squareOfNumber(6);
  print("=====================");
  List<int> averagenum = [3, 5, 8, 10];
  averageOfNumInList(averagenum);
  print("=====================");
  List<int> num2 = [1, 3, 2, 5, 4, 8];
  findLargestDigit(num2);
  print("=====================");
  printEvenNumber(50);
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

//Q3(1). Create a Dart program that checks if a given string is empty or not using if-else statements.

checkStringisEmpty(String checkstring) {
  if (checkstring.isEmpty) {
    print("String is Empty ");
  } else {
    print("String is not Empty:$checkstring");
  }
}
//OR

// Q3(2).Implement Dart code to print the multiplication table of a given number using a while loop.

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
// Q5. Create a Dart program that checks if a given number is positive, negative, or zero using if-else statements.

checkNumIsPositive(int numbers) {
  if (numbers > 0) {
    print("Number $numbers is Positive");
  } else {
    if (numbers < 0) {
      print("Number $numbers is negative");
    } else {
      print("Number $numbers is zero");
    }
  }
  ;
}
// Q6. Write a Dart program to calculate the factorial of a given number using a while loop.

calculateFactorial(int nums) {
  int factorial = 1;
  int originalnums = nums;
  while (nums >= 1) {
    factorial = factorial * nums;
    nums--;
  }
  print('The factorial of $originalnums is $factorial');
}

// Q7. Create a Dart program that prints the first 10 prime numbers using a for loop.
printPrimeNumber() {
  int count = 0;
  for (int primenum = 2; count < 10; primenum++) {
    bool isPrime = true;

    for (int i = 2; i < primenum; i++) {
      if (primenum % i == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      print("Prime number found:$primenum");
      count++;
    }
  }
}
// Q8. Implement Dart code to print the first 10 natural numbers in reverse order using a while loop.

naturalNumberInReverse(int naturalnum) {
  int i = 1;
  int naturaln = naturalnum;
  while (naturalnum >= i) {
    naturalnum--;
    print("First $naturaln numer = $naturalnum");
  }
}

// Q9. Implement Dart code to print the squares of numbers from 1 to 5 using a do-while loop.

squareOfNumber(int squarenum) {
  int b = 1;

  do {
    print("The sqaure of $b is ${b * b}");
    b++;
  } while (b < squarenum);
}
// Q10. Create Dart code to calculate the average of numbers in a list using a do-while loop.

averageOfNumInList(List<int> avg) {
  if (avg.isEmpty) {
    print("The List is empty");
    return;
  }

  var sum = 0;
  var count = 0;

  do {
    sum += avg[count];
    count++;
  } while (count < avg.length);

  var average = sum / avg.length.toDouble();

  print("Average: $average");
}

// Q11. Write a Dart program to find the largest digit of a given number using a do-while loop.
findLargestDigit(List<int> num) {
  if (num.isEmpty) {
    print("List is empty");
    return;
  }
  int maxElement = num[0];
  int i = 1;
  do {
    if (i < num.length) {
      if (num[i] > maxElement) {
        maxElement = num[i];
      }
    }
    i++;
  } while (i < num.length);
  print("The Largest Digit in list: $maxElement");
}

// Q12. Write a Dart program to print even numbers from 1 to 20 using a do-while loop
printEvenNumber(int evennum) {
  int num = 2;

  do {
    print("Even number :$num");
    num += 2;
  } while (num <= evennum);
}
