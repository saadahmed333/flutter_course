void main() {
  // Q1. Write a program that prints the
// Fibonacci sequence up to a given number using a for loop.

int n = 10;
int a = 0;
int b = 1;
for (int i = 0; i < n; i++) {
  print(a);
  int temp = a;
  a = b;
  b = temp + b;
}

// Q2.  Implement a code that finds the
// largest element in a list using a for loop.

List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
int max = numbers[0];
for (int i = 1; i < numbers.length; i++) {
  if (numbers[i] > max) {
    max = numbers[i];
  }
}
print(max);


// Q3. Write a program that prints the
// multiplication table of a given number using a for loop.

int number = 5;
for (int i = 1; i <= 10; i++) {
  print("$number x $i = ${number * i}");
}

// Q4. Implement a function that checks if a given string is a
// palindrome.

String reverseString(String str) {
  return str.split('').reversed.join('');
}

String isPalindrome(String str) {
  String reversed = reverseString(str);
  if (str == reversed) {
    return "Palindrome";
  } else {
    return "Not a Palindrome";
  }
}

print(isPalindrome("racecar"));


// Q5. Write a program to make such a
// pattern like a right angle triangle with a number which will repeat a number in
// a row. The pattern like :
//  1
//  22
//  333
//  4444

  for (int i = 1; i <= 5; i++) {
    for (int j = 1; j <= i; j++) {
      print(i);
    }
    print("\n");
  }

// Q6. Write a program that takes a list
// of numbers as input and prints the numbers greater than 5 using a for loop and
// if-else condition.

List<int> numberss = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
for (int i = 0; i < numberss.length; i++) {
  if (numberss[i] > 5) {
    print(numberss[i]);
  }
}


// Q7.  Write a program that counts the
// number of vowels in a given string using a for loop and if-else condition.

int countVowels(String str) {
  int count = 0;
  for (int i = 0; i < str.length; i++) {
    if (str[i] == 'a' || str[i] == 'e' || str[i] == 'i' || str[i] == 'o' || str[i] == 'u') {
      count++;
    }
  }
  return count;
}

print(countVowels("hello"));


}