// assignment 1
void main() {
/*1.Length and breadth of a rectangle are 5 and 7 respectively. Write a program to calculate the area of the rectangle.
Formula (area = length * breadth)*/
  print('Ans :1');
  int lenght = 5;
  int breadth = 7;

  int area = lenght * breadth;

  print('Area of rectangle are $area');

  /*2.Create a integer variable num = 7, Add 8 to the number and then divide it by 3. Now, 
  the modulus of that number is taken with 5 and then multiply the resultant value by 5, store result in variable i. Display the final result.*/
  print('Ans :2');
  int num1 = 7;
  int num2 = num1 + 8;

  num div = num2 / 3;

  num mod = div % 5;
  num result = mod * 5;
  print('The final result is $result');

  /*3.Write a program create two integer variables 'a' and 'b' and assign them any number and then check if both the conditions 'a < 50' and 'a < b' are true. 
   Display the result, now check if at-least one of the conditions 'a < 50' and 'a < b' is true.*/
  print('Ans :3');
  int a = 40;
  int b = 30;
  //check if both conditions are true
  bool bothConditionsTrue = (a < 50) && (a < b);
  print('both condition a < 50 and a < b are  $bothConditionsTrue ');

  //check if atleast one condition is true
  bool atleatsOneConditon = (a < 50) || (a < b);
  print(
      'At least one of the condition a < 50 and a < b is  $atleatsOneConditon');

  /*4.If the marks of Robert in three subjects are 78,45 and 62 respectively (each out of 100 ), write a program to calculate his total marks and percentage marks.
       Print his name, marks of all three subjects, total marks and percentage.*/

  print('Ans :4');
  // Data
  String name = 'Robert';
  int sub1 = 78;
  int sub2 = 45;
  int sub3 = 62;
  int maxmarkpersub = 100;
  int totalsub = 3;

  //calculate total marks and percentage
  int totalmarks = sub1 + sub2 + sub3;
  double percentage = (totalmarks / (totalsub * maxmarkpersub)) * 100;

  //results

  print('Name:$name');
  print('Mark in subject1: $sub1');
  print('Mark in subject2: $sub2');
  print('Mark in subject3: $sub3');
  print('Total marks : $totalmarks');
  print('Percentage : $percentage');
}
