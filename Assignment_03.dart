void main() {

  //Create a list of names and print all names using list.

  List<String> names = ["Saad", "Ahmed", "Ali", "Hassan"];
  for (String name in names) {
    print(name);
  }

  //  Create a list of Days and print only Sunday

  List<String> days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"];
  for (String day in days) {
    if (day == "Sunday") {
      print(day);
    }
  }

  //create a list  of name, class, roll no, grade, percentage. And print

  List<String> student = ["Saad", "10", "1", "A", "90"];
  for (String s in student) {
    print(s);
  }

  //Create a list of numbers & write a program to get the smallest & greatest number from a list.

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int smallest = numbers[0];
  int greatest = numbers[0];
  for (int number in numbers) {
    if (number < smallest) {
      smallest = number;
    }
    if (number > greatest) {
      greatest = number;
    }
  }
  print("Smallest number: $smallest");
  print("Greatest number: $greatest");

  //Given a list of integers, write a dart code that returns the maximum value from the list.

  List<int> numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int max = numbers2[0];
  for (int number in numbers2) {
    if (number > max) {
      max = number;
    }
  }
  print("Maximum value: $max");

  //Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain unchanged.

  List<String> strings = ["Saad", "Ahmed", "Ali", "Hassan"];
  List<String> reversed = [];
  for (int i = strings.length - 1; i >= 0; i--) {
    reversed.add(strings[i]);
  }
  print("Original list: $strings");
  print("Reversed list: $reversed");

  //Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the positive numbers.

  List<int> numbers3 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> positive = numbers3.where((number) => number > 0).toList();
  print("Original list: $numbers3");
  print("Positive numbers: $positive");

  //: remove all false values from below list by using removeWhere or retainWhere property.

  List<String> usersEligibility = ['John', 'Alice', 'eligible', 'Mike', 'Sarah', 'Tom'];
  usersEligibility.removeWhere((user) => user != 'eligible');
  print("Original list: $usersEligibility");

  //Use  any 10 List methods.

  List<int> numbers4 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  numbers4.add(11);
  print("Original list: $numbers4");
  numbers4.remove(11);
  print("Original list: $numbers4");
  numbers4.insert(0, 0);
  print("Original list: $numbers4");
  numbers4.removeAt(0);
  print("Original list: $numbers4");
  numbers4.removeRange(0, 5);
  print("Original list: $numbers4");
  numbers4.removeWhere((number) => number % 2 == 0);
  print("Original list: $numbers4");
  numbers4.retainWhere((number) => number % 2 == 0);
  print("Original list: $numbers4");
  numbers4.clear();
  print("Original list: $numbers4");
  print("Is list empty: ${numbers4.isEmpty}");
  print("Is list empty: ${numbers4.isNotEmpty}");
}