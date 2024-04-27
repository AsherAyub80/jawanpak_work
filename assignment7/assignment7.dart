void main() {
  _fibonacciSequence(10);
  List<int> numbers = [
    5,
    6,
    2,
    10,
    9,
    4,
  ];
  _findLargestNum(numbers);
  _multiplicationTable(5);

  String textword = 'racecar';
  print('$textword is a palindrome ${isPalindrom(textword)}');

  _righTriangleROw(5);

  List greaternumbers = [2, 6, 7, 5, 9, 0];
  _greaterThen(greaternumbers);
  String inputString = 'Asher Ayub';
  print("Number of vowels: ${vowelsCount(inputString)}");
}

/*
Q1. Write a program that prints the
Fibonacci sequence up to a given number using a for loop.

Example:
Input:
10

Output:
0 1 1 2 3 5 8

*/

void _fibonacciSequence(int n) {
  int a = 0;
  int b = 1;
  for (int i = 0; a < n; i++) {
    print("$a");
    int c = a + b;
    a = b;
    b = c;
  }
}

// Q2.  Implement a code that finds the
// largest element in a list using a for loop.

// Example:
// Input:
// [3, 9, 1, 6, 4, 2, 8, 5, 7]

// Output:
// Largest element: 9

void _findLargestNum(List<int> num) {
  if (num.isEmpty) {
    print("List is empty");
  }
  int maxElement = num[0];
  for (int i = 1; i < num.length; i++) {
    if (num[i] > maxElement) {
      maxElement = num[i];
    }
  }

  print("The Largest number in list is $maxElement");
}

// Q3. Write a program that prints the
// multiplication table of a given number using a for loop.

// Example: Input: 5

// Output:
// 5 x 1= 5

// 5 x 2= 10

// 5 x 3= 15
// ...
// ...
// ...
// 5 x 10 = 50

void _multiplicationTable(int multiplicationnum) {
  for (int i = 1; i <= 10; i++) {
    print("$multiplicationnum x $i = ${multiplicationnum * i}");
  }
}

// Q4. Implement a function that checks if a given string is a
// palindrome.

// Example:

// Input:
// "radar"

// Output:
// "radar" is a palindrome.

bool isPalindrom(String word) {
  String reversed = word.split('').reversed.join();
  return word == reversed;
}

// Q5. Write a program to make such a
// pattern like a right angle triangle with a number which will repeat a number in
// a row. The pattern like :

//  1

//  22

//  333

//  4444

void _righTriangleROw(var rownumbers) {
  for (var i = 1; i <= rownumbers; i++) {
    String row = '';
    for (int j = 0; j < i; j++) {
      row += i.toString();
    }
    print(row);
  }
}

// Q6. Write a program that takes a list
// of numbers as input and prints the numbers greater than 5 using a for loop and
// if-else condition.

void _greaterThen(List greater) {
  List<int> greaterthen5 = [];

  for (int i = 0; i < greater.length; i++) {
    int num2 = greater[i];

    if (num2 > 5) {
      greaterthen5.add(num2);
    }
  }
  if (greaterthen5.isEmpty) {
    print("No numbers is greater then 5");
  } else {
    print("Numbers greater then 5: $greaterthen5");
  }
}

// Q7.  Write a program that counts the
// number of vowels in a given string using a for loop and if-else condition.

int vowelsCount(String inpustring) {
  Set<String> vowels = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'};
  int vowelscount = 0;
  for (int i = 0; i < inpustring.length; i++) {
    if (vowels.contains(inpustring[i])) {
      vowelscount++;
    }
  }
  return vowelscount;
}
