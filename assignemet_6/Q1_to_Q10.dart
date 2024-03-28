void main() {
  print('Ans 1');
  listOfNames([]);
  print('Ans 2');
  listOfDays([]);
  print('Ans 3');
  daysList('');
  print('Ans 4');
  checkNum([]);
  print('Ans 5');
  myMap({});
  print('Ans 6');
  worldmap({});
  print('Ans 7');
  expensemap({});
  print('Ans 8');
  removefalse([]);
  print('Ans 9');
  greatestnum([]);
  print('Ans 10');
  List<String> originalelement = ['John', 'Asher', 'John', 'Abdullah'];
  checkDuplicate(originalelement);
}

// Q.1: Create a list of names and print all names using list.
void listOfNames(List names) {
  List<String> names = ["Asher", "Arham", "Asad"];
  print(names);
}
// Q.2: Create an empty list of type string called days. Use the add method to add names of 7 days and print all days.

void listOfDays(List days) {
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
// Q.3: Create a list of Days and remove one by one from the end of list.

void daysList(String removedays) {
  List day = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  ];
  print(day);
  day.removeLast();
  print(day);
  day.removeLast();
  print(day);
  day.removeLast();
  print(day);
  day.removeLast();
  print(day);
  day.removeLast();
  print(day);
  day.removeLast();
  print(day);
  day.removeLast();
  print(day);
}
// Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.

void checkNum(List number) {
  List<int> number = [1, 34, 55, 2, 88, 9];
  number.sort();
  print('The smallest number in list is ${number.first}');
  print('The Greatest number in list is ${number.last}');
}
// Q.5: Create a map with name, phone keys and store some values to it. Use where to find all keys that have length 4.

void myMap(Map findkey) {
  Map<String, String> map1 = {
    'Asher': '7657576',
    'john': '9089098099',
    'bob': '89878978978'
  };
  var keywithlength4 = map1.keys.where((key) => key.length == 4);
  print("Keys with length 4: $keywithlength4");
}
// Q.6: Create Map variable name world then inside it create countries Map, Key will be the name country & country value will have another map having capitalCity,
//currency and language to it. by using any country key print all the value of Capital & Currency.

void worldmap(Map world) {
  Map world = {
    'Countries': {
      'Pakistan': {
        'Capital city': 'Islamabad',
        'Currency': 'Pkr',
        'Language': 'Urdu',
      },
      'Australia': {
        'Capital city': 'canberra',
        'Currency': 'Australian dollar',
        'Language': 'English',
      },
      'Saudia Arabia': {
        'Capital city': 'Riyadh',
        'Currency': 'Saudi Riyal',
        'Language': 'Arabic',
      }
    }
  };

  Map countries = world['Countries'];
  String countryname = 'Saudia Arabia';
  Map countrydetail = countries[countryname];

  print('Details of $countryname:');
  print('Capital city:${countrydetail['Capital city']}');
  print('Currency: ${countrydetail['Currency']} ');
  print('Language: ${countrydetail['Language']}');
}

// Q.7:
// Map<String, double> expenses = {
//   'sun': 3000.0,
//   'mon': 3000.0,
//   'tue': 3234.0,
// };
// Check if "fri" exist in expanses; if exist change it's value to 5000.0 otherwise add 'fri' to expenses and set its value to 5000.0 then print expenses.

void expensemap(Map expenses) {
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };
  //check if 'fri' exist in expense change it value
  if (expenses.containsKey('fri')) {
    expenses['fri'] = 5000.0;
    print(expenses);
    //otherwise add 'fri to expense here
  } else {
    expenses['fri'] = 5000.0;
    print(expenses);
  }
}
// Q.8: remove all false values from below list by using removeWhere or retainWhere property.
// List<Map<String, bool>> usersEligibility = [
// {'name': 'John', 'eligible': true},
// {'name': 'Alice', 'eligible': false},
// {'name': 'Mike', 'eligible': true},
// {'name': 'Sarah', 'eligible': true},
// {'name': 'Tom', 'eligible': false},
// ];

void removefalse(dynamic usersEligibility) {
  List<Map<String, dynamic>> usersEligibility = [
    {'name': 'John', 'eligible': true},
    {'name': 'Alice', 'eligible': false},
    {'name': 'Mike', 'eligible': true},
    {'name': 'Sarah', 'eligible': true},
    {'name': 'Tom', 'eligible': false},
  ];
  usersEligibility.removeWhere((user) => user['eligible'] == false);
  print(usersEligibility);
}
// Q.9: Given a list of integers, write a dart code that returns the maximum value from the list.

void greatestnum(List checknum) {
  List<int> checknum = [2, 55, 66, 34, 2, 8];
  checknum.sort();
  print('The maximum value in above list is ${checknum.last}');
}

// Q.10: Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates.
//The order of elements in the new list should be the same as in the original list.

void checkDuplicate(List<String> elements) {
  Set<String> uniqueSet = {};
  List<String> originalelement = List.from(elements);
  elements.removeWhere((element) {
    return !uniqueSet.add(element);
  });
  print('Original List :$originalelement');
  print('List without duplicate Elements :$elements');
}
