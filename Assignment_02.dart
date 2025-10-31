void main() {

  // If a student has marks greater than 40 has attended more than 75% classes, print "Pass", otherwise "Fail"

  int marks = 40;
  int attendance = 75;

  if (marks >= 40 && attendance >= 75) {
    print("Pass");
  } else {
    print("Fail");
  }

  // Write a program create two integer variables 'a' and 'b' and assign them any number and then check if both the conditions 'a < 50' and 'a < b' are true. Display the result, now check if at-least one of the conditions 'a < 50' and 'a < b' is true.

  int a = 50;
  int b = 100;

  if (a < 50 && a < b) {
    print("Both conditions are true");
  } else {
    print("At least one condition is true");
  }

  //If the marks of Robert in three subjects are 78,45 and 62 respectively (each out of 100 ), write a program to calculate his total marks and percentage marks. Print his name, marks of all three subjects, total marks and percentage.

    String name = "Robert";
    int marks1 = 78;
    int marks2 = 45;
    int marks3 = 62;
    int totalMarks = marks1 + marks2 + marks3;
    double percentage = (totalMarks / 300) * 100;
    print("Name: $name");
    print("Marks of all three subjects: $marks1, $marks2, $marks3");
    print("Total marks: $totalMarks");
    print("Percentage: $percentage%");

    // Create a program to display a student’s grade based on marks.

    int std_marks = 40;
    if (std_marks >= 90) {
      print("Grade: A");
    } else if (std_marks >= 80) {
      print("Grade: B");
    } else if (std_marks >= 70) {
      print("Grade: C");
    } else if (std_marks >= 60) {
      print("Grade: D");
    } else {
      print("Grade: F");
    }


    //Take 4 integer variables for subject & create a program for Marksheet that will print user total marks & percentage

    int sub1 = 78;
    int sub2 = 45;
    int sub3 = 62;
    int sub4 = 55;
    int total_marks = sub1 + sub2 + sub3 + sub4;
    double s_percentage = (total_marks / 400) * 100;
    print("Total marks: $total_marks");
    print("Percentage: $s_percentage%");

  
  //Take two variables and store age then using if/else condition to determine oldest and youngest among them.

    int age1 = 20;
    int age2 = 25;
    if (age1 > age2) {
      print("Age 1 is oldest");
    } else {
      print("Age 2 is oldest");
    }

    //Write a Dart program to check if a given number is positive, negative, or zero.

    int num = 0;
    if (num > 0) {
      print("Number is positive");
    } else if (num < 0) {
      print("Number is negative");
    } else {
      print("Number is zero");
    }

    //create two integer variables length and breadth and assign values then check if they are square values or rectangle values

    int length = 10;
    int breadth = 10;
    if (length == breadth) {
      print("Square");
    } else {
      print("Rectangle");
    }


    //Write a program to read temperature in centigrade and display a suitable message according to temperature:
// You have num variable temperature = 42;
// Now print the message according to temperature:
// temp < 0 then Freezing weather
// temp 0-10 then Very Cold weather
// temp 10-20 then Cold weather
// temp 20-30 then Normal in Temp
// temp 30-40 then Its Hot
// temp >=40 then Its Very Hot

    int temperature = 42;
    if (temperature < 0) {
      print("Freezing weather");
    } else if (temperature >= 0 && temperature <= 10) {
      print("Very Cold weather");
    } else if (temperature >= 10 && temperature <= 20) {
      print("Cold weather");
    } else if (temperature >= 20 && temperature <= 30) {
      print("Normal in Temp");
    } else if (temperature >= 30 && temperature <= 40) {
      print("Its Hot");
    } else {
      print("Its Very Hot");
    }
}