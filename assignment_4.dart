void main() {
  //calling functions here
  print('Ans: 1');
  listOfNames('');
  print('Ans: 2');
  listOfDaysAdd('');
  print('Ans: 3');
  listOfDaysRemove('');
  print('Ans: 4');
  listOfNumbers(0);
  print('Ans: 5');
  listOfMaxNumber(0);

//Print for seperating ans in console
}

//Here I create seperate function for making code look more neat,

//Q.1: Create a list of names and print all names using list.
void listOfNames(String names) {
  List names = ['Usama', 'Asher', 'Anas'];
  print(names);
}

//Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.
void listOfDaysAdd(String daysadd) {
  List<String> days = [];
  days.add('Monday');
  days.add('Tuesday');
  days.add('Wednesday');
  days.add('Thursday');
  days.add('Friday');
  days.add('Saturday');
  days.add('Sunday');
  print(days);
}

//Q.3: Create a list of Days and remove one by one from the end of list.
void listOfDaysRemove(String daysremove) {
  List dayS = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  print(dayS);
  dayS.removeAt(6);
  print(dayS);

  dayS.removeAt(5);
  print(dayS);
  dayS.removeAt(4);
  print(dayS);
  dayS.removeAt(3);
  print(dayS);
  dayS.removeAt(2);
  print(dayS);
  dayS.removeAt(1);
  print(dayS);
  dayS.removeAt(0);
  print(dayS);
}
//Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.

void listOfNumbers(int numbers) {
  List numberslist = [12, 15, 126, 161, 50];
  numberslist.sort();
  print('Smallest value in the list is ${numberslist.first}');
  print('Greatest number in list is ${numberslist.last}');
}
//Q. 5 Given a list of integers, write a dart code that returns the maximum value from the list.

void listOfMaxNumber(int number) {
  List numberlist = [3, 17, 63, 196, 4];
  numberlist.sort();
  print('Maximum Value from list is ${numberlist.last}');
}
