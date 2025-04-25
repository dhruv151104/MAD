import 'dart:io';

void main() {
  print("Enter a list of integers separated by spaces:");
  List<int> numbers = stdin.readLineSync()!
      .split(' ')
      .map((e) => int.parse(e))
      .toList();

  printTotal(numbers);
  printHighest(numbers);
  printLowest(numbers);
  printAverage(numbers);
  printMedian(numbers);
}

void printTotal(List<int> numbers) {
  int total = numbers.reduce((a, b) => a + b);
  print("Total: $total");
}

void printHighest(List<int> numbers) {
  int highest = numbers.reduce((a, b) => a > b ? a : b);
  print("Highest: $highest");
}

void printLowest(List<int> numbers) {
  int lowest = numbers.reduce((a, b) => a < b ? a : b);
  print("Lowest: $lowest");
}

void printAverage(List<int> numbers) {
  double average = numbers.reduce((a, b) => a + b) / numbers.length;
  print("Average: $average");
}

void printMedian(List<int> numbers) {
  List<int> sorted = List.from(numbers)..sort();
  double median;
  int middle = sorted.length ~/ 2;

  if (sorted.length % 2 == 1) {
    median = sorted[middle].toDouble();
  } else {
    median = (sorted[middle - 1] + sorted[middle]) / 2;
  }

  print("Median: $median");
}