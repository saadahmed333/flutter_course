void main () {

// Q.1: Write a Dart code that takes in a list of strings and removes any duplicate elements, returning a new list without duplicates. The order of elements in the new list should be the same as in the original list.
  List<String> strings = ["Saad", "Ahmed", "Ali", "Hassan", "Saad", "Ahmed", "Ali", "Hassan"];
  List<String> unique = strings.toSet().toList();
  print("Original list: $strings");
  print("Unique list: $unique");

  // Q .2: Write a Dart code that takes in a list and an integer n as parameters. The program should print a new list containing the first n elements from the original list.
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int n = 5;
  List<int> firstN = numbers.take(n).toList();
  print("Original list: $numbers");
  print("First $n elements: $firstN");

  // Q.3: Write a Dart code that takes in a list of strings and prints a new list with the elements in reverse order. The original list should remain unchanged.
  List<String> strings2 = ["Saad", "Ahmed", "Ali", "Hassan"];
  List<String> reversed = strings2.reversed.toList();
  print("Original list: $strings2");
  print("Reversed list: $reversed");

  // Q.5: Write a Dart code that takes in a list of integers and prints a new list with the elements sorted in ascending order. The original list should remain unchanged.
  List<int> numbers2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> sorted = numbers2.toList()..sort();
  print("Original list: $numbers2");
  print("Sorted list: $sorted");

  // Q.6: Implement a Dart code that uses the where() method to filter out negative numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the positive numbers.
  List<int> numbers3 = [1, 2, 3, 4, 5, 6, -2, -9, -7, -8, -9, -10];
  List<int> positive = numbers3.where((number) => number > 0).toList();
  print("Original list: $numbers3");
  print("Positive numbers: $positive");

  // Q.7: Implement a Dart code that uses the where() method to filter out odd numbers from a list of integers. The program should take in the original list as a parameter and print a new list containing only the even numbers.
  List<int> numbers4 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> even = numbers4.where((number) => number % 2 == 0).toList();
  print("Original list: $numbers4");
  print("Even numbers: $even");

  // Q.8: Given a list of integers, write a Dart code that uses the map() method to create a new list with each value squared. The program should take in the original list as a parameter and print the new list.
  List<int> numbers5 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> squared = numbers5.map((number) => number * number).toList();
  print("Original list: $numbers5");
  print("Squared list: $squared");


  // Q.10: Create a map named "car" with the following key-value pairs: "brand" as "Toyota", "color" as "Red", "isSedan" as true. Write Dart code to check if the car is a sedan and red in color. Print "Match" if both conditions are true, otherwise print "No match".
  Map<String, dynamic> car = {"brand": "Toyota", "color": "Red", "isSedan": true};
  if (car["isSedan"] && car["color"] == "Red") {
    print("Match");
  } else {
    print("No match");
  }

  // Q.11: Given a map representing a user with keys "name", "isAdmin", and "isActive", write Dart code to check if the user is an active admin. If the user is both an admin and active, print "Active admin", otherwise print "Not an active admin".
  Map<String, dynamic> user = {"name": "John", "isAdmin": true, "isActive": true};
  if (user["isAdmin"] && user["isActive"]) {
    print("Active admin");
  } else {
    print("Not an active admin");
  }


  // Q.12: Given a map representing a shopping cart with keys as product names and values as quantities, write Dart code to check if a product named "Apple" exists in the cart. Print "Product found" if it exists, otherwise print "Product not found".
  Map<String, int> cart = {"Apple": 2, "Banana": 3, "Orange": 1};
  if (cart.containsKey("Apple")) {
    print("Product found");
  } else {
    print("Product not found");
  }


// Q.13: Differentiate between and with an example.


// Q.14:What will happen if you try to apply ++ on a constant value like 5++?
    // 5++; // ❌ Error: Cannot assign to a literal.

// Q.15: Is a = a + 1 the same as a++ in Dart? If not, explain the difference.
  int a = 5;

  int x = a++; // x gets old value (5), a becomes 6
  print('x = $x, a = $a');

  a = 5;
  int y = a = a + 1; // y gets new value (6), a becomes 6
  print('y = $y, a = $a');
}