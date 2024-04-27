void main() {
  print('Ans 11');
  nelementToList([], 2);
  print('Ans 12');
  reversedlist([]);
  print('Ans 13');
  uniqueElement([]);
  print('Ans 14');
  List<int> originalIntList = [10, 5, 3, 6, 1];
  ascendingList(originalIntList);
  print('Ans 15');
  List<num> negativeNumber = [1, 5, 10, 11, -1, 5, -3, -6];
  filternegative(negativeNumber);
  print('Ans 16');
  List<int> originalNumList = [3, 2, 5, 6, 9, 10, 11, 12];
  evenNumber(originalNumList);
  print('Ans 17');
  List<int> originalnum = [2, 5, 6, 10, 12];
  squaredList(originalnum);
  print('Ans 18');
  Map<String, dynamic> person = {
    "Name": "John",
    "Age": 25,
    "isStudent": true,
  };
  checkstdn(person);
  print('Ans 19');
  Map<String, dynamic> product = {
    "Name": 'Play Station 5',
    "Price": 320,
    "Quantity": 2,
  };
  productmap(product);
  print('Ans 20');
  Map<String, dynamic> car = {
    "Brand": "Toyota",
    "Color": "Red",
    "isSedan": true,
  };
  carmap(car);
  print('Ans 21');
  Map<String, dynamic> user = {
    "Name": "Asher",
    "isAdmin": true,
    "isActive": false,
  };

  isActiveAdmin(user);
  print('Ans 22');
  Map<String, dynamic> productNames = {
    "Mango": 5,
    "Orange": 10,
    "Apple": 3,
  };
  shoppingCart(productNames);
}

// Q 11: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original list.
void nelementToList(List listElement, int n) {
  List<int> listElement = [2, 4, 5, 7, 8, 9, 10];

  List<int> newlist = listElement.sublist(0, n);
  print(
      'The  new list containing the first n elements from the original list:$newlist');
}

// Q.12: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain unchanged.

void reversedlist(
  List listElement2,
) {
  List<String> listElement2 = ['Bannana', 'Mango', 'Apple'];

  List<String> reverselist = List.from(listElement2.reversed);
  //original list
  print('The original list is $listElement2');
  //reversed list
  print('The reversed list is $reverselist');
}

//Q.13: Implement a code that takes in a list of integers and returns a new list containing only the unique elements from the original list.
//The order of elements in the new list should be the same as in the original list.
void uniqueElement(List UniqueElements) {
  List<int> getUniqueElements(List<int> inputList) {
    return inputList.toSet().toList();
  }

  List<int> originalList = [1, 5, 6, 5, 7, 8, 9, 7];
  List<int> uniqueElements = getUniqueElements(originalList);

  print('Original List:$originalList');
  print('Unique Element List:$uniqueElements');
}
// Q.14: Write a Dart code that takes in a list of integers and prints a new list with the elements sorted in ascending order.
//The original list should remain unchanged.

void ascendingList(List originalnumList) {
  List<int> ascendingElement = List.from(originalnumList);
  ascendingElement.sort();
  print('Original List:$originalnumList');
  print('Ascending List:$ascendingElement');
}
// Q.15: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers.
//The program should take in the original list as a parameter and print a new list containing only the positive numbers.

void filternegative(List negativeNumber) {
  List<int> positiveNumber = List.from(negativeNumber);
  positiveNumber = positiveNumber.where((num) => num >= 0).toList();
  print('Original List:$negativeNumber');
  print('Positive List:$positiveNumber');
}

// Q.16: Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers.
//The program should take in the original list as a parameter and print a new list containing only the even numbers.
void evenNumber(List originalNumList) {
  List<int> evenNum = List.from(originalNumList);
  evenNum = evenNum.where((number) => number % 2 == 0).toList();
  print('Original List:$originalNumList');
  print('Even Number List:$evenNum');
}

// Q.17: Given a list of integers, write a Dart code that uses the map() method to create a new list with each value squared.
//The program should take in the original list as a parameter and print the new list.
void squaredList(List<int> originalnum) {
  List<int> squaredlist = originalnum.map((num) => num * num).toList();

  print('The original list is :$originalnum');
  print('The squared list is :$squaredlist');
}

// Q.18: Create a map named "person" with the following key-value pairs: "name" as "John", "age" as 25, "isStudent" as true. Write a Dart code to check if the person is both a student and over 18 years old.
//Print "Eligible" if both conditions are true, otherwise print "Not eligible".
void checkstdn(Map<String, dynamic> person) {
  bool isStudent = person["isStudent"];
  int? age = person["Age"];

  if (isStudent && age != null && age >= 18) {
    print('The person is Eligible');
  } else {
    print('The person is not Eligible');
  }
}
// Q.19: Given a map representing a product with keys "name", "price", and "quantity", write Dart code to check if the product is in stock.
//If the quantity is greater than 0, print "In stock", otherwise print "Out of stock".

void productmap(Map<String, dynamic> product) {
  int checkStock = product["Quantity"];

  if (checkStock > 0) {
    print("Product ${product["Name"]} is In Stock");
    print("Quantity of ${product["Name"]} is ${product["Quantity"]}");
    print("Price of ${product["Name"]} is \$${product["Price"]}");
  } else {
    print('Product is Out of Stock');
  }
}

// Q.20: Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color" as "Red", "isSedan" as true.
//Write Dart code to check if the car is a sedan and red in color. Print "Match" if both conditions are true, otherwise print "No match".
void carmap(Map<String, dynamic> car) {
  String carcolor = car["Color"];
  bool isSedan = car["isSedan"];
  if (isSedan && carcolor == "Red") {
    print("Match");
  } else {
    print("Not Match");
  }
}

// Q.21: Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if the user is an active admin.
//If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin".
void isActiveAdmin(Map<String, dynamic> user) {
  bool isActive = user["isActive"];
  bool isAdmin = user["isAdmin"];
  if (isActive && isAdmin) {
    print('${user["Name"]} is  Active admin');
  } else {
    print('${user["Name"]} is not Active admin');
  }
}

// Q.22: Given a map representing a shopping cart with keys as product names and values as quantities, write Dart code to check if a product named "Apple" exists in the cart.
// Print "Product found" if it exists, otherwise print "Product not found".
void shoppingCart(Map<String, dynamic> productNames) {
  if (productNames.containsKey("Apple")) {
    print('Product found');
    print('Quantity of Apple is ${productNames["Apple"]}');
  } else {
    print('Product not Found');
  }
}
