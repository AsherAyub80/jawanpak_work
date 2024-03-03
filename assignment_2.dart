// assigment 2
void main() {
  /*Q.1: Create two integer variables length and breadth and assign values then check if they are square values or rectangle values.
i.e: if both values are equal then it's square otherwise rectangle.*/
  print('Ans:1');
  int length = 10;
  int breadth = 10;
  if (length == breadth) {
    print('It is a square.');
  } else {
    print('It is a rectangle.');
  }

  /* Q.2: Take two variables and store age then using if/else condition to determine oldest and youngest among them. */
  print('Ans:2');
  int age1 = 20;
  int age2 = 40;
  if (age1 > age2) {
    print('Person 1 is oldest');
    print('Person 2 is youngest');
  } else if (age1 < age2) {
    print('Person 2 is oldest');
    print('Person 1 is youngest');
  } else {
    print('Both person are of the same age');
  }
  /* Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value:
Number of classes held = 16,
Number of classes attended = 10,
and print percentage of class attended.
Is student is allowed to sit in exam or not? */
  print('Ans:3');
  int classheld = 16;
  int classattend = 10;
  //calculate attendance percentage
  double attendpercentage = (classattend / classheld) * 100;
  print('Percentage of class attend is ${attendpercentage}');
  //check if student allowed to sit in exam or not
  if (attendpercentage >= 75) {
    print('the Student is allowed to sit in exam');
  } else {
    print('The Student is not allowed sit in exam');
  }
  /*Q.4: Create integer variable assign any year to it and check if a year is leap year or not.
If a year is divisible by 4 then it is leap year but if the year is century year like 2000, 1900, 2100 then it must be divisible by 400.
i.e: Use % ( modulus ) operator.  */
  print('Ans:4');

  int year = 2024;
  //check if year is leap or not
  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    print('$year is leap year');
  } else {
    print('$year is not leap year');
  }
  /* Q.5  Write a program to read temperature in centigrade and display a suitable message according to temperature:
You have num variable temperature = 42;
Now print the message according to temperature:
temp < 0 then Freezing weather
temp 0-10 then Very Cold weather
temp 10-20 then Cold weather
temp 20-30 then Normal in Temp
temp 30-40 then Its Hot
temp >=40 then Its Very Hot*/
  print('Ans:5');

  double temperature = 32;
  // display message according to temperature
  if (temperature < 0) {
    print("Freezing Weather");
  } else if (temperature >= 0 && temperature <= 10) {
    print("Very cold Weather");
  } else if (temperature > 10 && temperature <= 20) {
    print("Cold Weather");
  } else if (temperature > 20 && temperature <= 30) {
    print("Normal In Temp");
  } else if (temperature > 30 && temperature <= 40) {
    print("Its Hot");
  } else {
    print('Its Very Hot');
  }
  /*Q.6: Write a program to check whether an alphabet is a vowel or consonant. */
  print('Ans:6');
  String alphabet = 'a';
  if (alphabet == 'a' ||
      alphabet == 'e' ||
      alphabet == 'i' ||
      alphabet == 'o' ||
      alphabet == 'u') {
    print('$alphabet is vowel');
  } else {
    print('$alphabet is consonant');
  }
  /* Q.7: Write a program to calculate and print the Electricity bill of a given customer. Create variable for customer id, name, unit consumed by the user, bill_amount and print the total amount the customer needs to pay. The charge are as follow :

Unit    Charge/unit
upto 199    @1.20
200 and above but less than 400    @1.50
400 and above but less than 600    @1.80
600 and above             @2.00;
Test Data :
id: 1001
name: James
units: 800
Expected Output :
Customer IDNO :1001
Customer Name :James
unit Consumed :800
Amount Charges @Rs. 2.00 per unit : 1600.00
Net Bill Amount : 1600.00



*/
  print('Ans:7');
//input data
  int customerId = 1001;
  String customerName = 'James';
  int unitConsumed = 396;
  double chargeperunit = 1.20;
  //calculate bill amount based on the given condition
  if (unitConsumed <= 199) {
    chargeperunit = 1.20;
  } else if (unitConsumed >= 200 && unitConsumed <= 399) {
    chargeperunit = 1.50;
  } else if (unitConsumed >= 400 && unitConsumed <= 599) {
    chargeperunit = 1.80;
  } else {
    chargeperunit = 2.00;
  }
  double billAmount = unitConsumed * chargeperunit;
  print('Customer IDNO:$customerId');
  print('Customer Name:$customerName');
  print("Unit Consume:$unitConsumed");
  print("Amount charges @RS ${chargeperunit} per unit: ${billAmount}");
  print('Net bill Amount:$billAmount');
}
