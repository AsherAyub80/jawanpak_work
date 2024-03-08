void main() {
  checkGivenNum(1);
  isAlphabet("2");
  isDigit("As");
  isSpecialCharacter("*");
  checkYearLeap(1900);
}

//Q.1 Write a Dart program to check if a given number is positive, negative, or zero.
void checkGivenNum(int givencharacter) {
  if (givencharacter >= 1) {
    print('Given Number is Positive');
  } else if (givencharacter < 0) {
    print('Given Number is Negative');
  } else {
    print('Given number is zero');
  }
}

//Q.2 Develop a Dart program that determines whether a given character is an alphabet, digit, or special character.
void isAlphabet(String character) {
  // Check if the input is a single character and is an alphabet
  if (character.toUpperCase() != character.toLowerCase()) {
    print("$character is alphabet");
  } else {
    print("$character is not a alphabet");
  }
}

void isDigit(String s) {
  try {
    double.parse(s);
    print('$s is digit');
  } catch (e) {
    print("$s Not a digit");
  }
}

void isSpecialCharacter(String char) {
  Set<String> specialCharacters = {
    '!',
    '@',
    '#',
    '\$',
    '%',
    '^',
    '&',
    '*',
    '(',
    ')',
    ',',
    '.',
    '?',
    '"',
    ':',
    '{',
    '}',
    '|',
    '<',
    '>'
  };
  if (specialCharacters.contains(char)) {
    print("$char have special character");
  } else {
    print("$char dont have special character");
  }
  /*  
Q.3 Write a Dart program to determine if a given year is a leap year or not, 
considering leap years occur every 4 years except for years divisible by 100 unless they are also divisible by 400.*/
}

void checkYearLeap(int year) {
  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    print('$year is leap year');
  } else {
    print('$year is not leap year');
  }
}
