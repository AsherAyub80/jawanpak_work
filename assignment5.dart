void main() {
  listoffruit('');
  listofevennum(0);
  List<int> numbers = [1, 3, 1, 5, 8, 9, 8];
  checkList('');
  removeduplicate(numbers);
  mergelist(0);
  studentinfo('');
  populationinfo('');
}
//? Q.1: Write a Dart program to create a list of your favorite fruits and print them in alphabetical order.

void listoffruit(String fruits) {
  List fruits = ["Mango", "Apple", "Bannana", "Orange"];
  fruits.sort();
  print(fruits);
}
//? Q.2: Create a list of even numbers from 1 to 20 and print them.

void listofevennum(int evennum) {
  List evennum = [2, 4, 6, 8, 10, 12, 14, 16, 18, 20];
  print(evennum);
}
//? Q.3: Write a Dart program to remove all duplicate elements from a given list of numbers.

void removeduplicate(List<int> numbers) {
  Set<int> uniqueSet = {};
  numbers.removeWhere((numbers) {
    return !uniqueSet.add(numbers);
  });
  print("List without Duplicate:$numbers");
}
//? Q.4: Write a Dart program to check if a given list is empty or not.

void checkList(var myList) {
  List myList = [];
  if (myList.isEmpty) {
    print("List" + myList.toString() + "is empty");
  } else {
    print("List" + myList.toString() + "is not empty");
  }
}

// ? Q.5: Create two lists of numbers and merge them into a single list. Print the merged list.

void mergelist(int lists) {
  List listone = [1, 2, 3, 4, 5, 6];
  List listtwo = [7, 8, 9, 10];
  print(listone + listtwo);
}
// ? Q.6: Write a Dart program to create a map representing a student's information including name, age, and grade. Print out all the information stored in the map.

void studentinfo(dynamic info) {
  Map details = {'name': 'Asher', 'Age': '19', 'Grade': 'A'};
  print(details);
}
// ? Q.7: Create a map representing the population of different cities. Write a Dart program to find and print the city with the highest population.

void populationinfo(dynamic popinfo) {
  Map<String, int>? populationdetail = {
    'Delhi': 29399141,
    'Karachi': 17648555,
    "Tokyo": 37435191,
  };
  String highest = populationdetail.keys.first;
  int max = populationdetail.values.first;
  populationdetail.forEach((key, value) {
    if (max < value) {
      max = value;
      highest = key;
    }
  });
  print('$highest is most Populous city of the world with population of $max');
}
