import 'dart:io';

void main() {
  // Accept a long sentence as input
  print("Enter a long sentence:");
  String sentence = stdin.readLineSync() ?? "";

  // Call the functions
  printNumberOfCharacters(sentence);
  printNumberOfWords(sentence);
  printSentenceInReverse(sentence);
}

// Function to print the number of characters in the sentence
void printNumberOfCharacters(String sentence) {
  print("Number of characters: ${sentence.length}");
}

// Function to print the number of words in the sentence
void printNumberOfWords(String sentence) {
  List<String> words = sentence.split(RegExp(r'\s+'));
  print("Number of words: ${words.length}");
}

// Function to print the sentence in reverse order
void printSentenceInReverse(String sentence) {
  String reversed = sentence.split('').reversed.join('');
  print("Reversed sentence: $reversed");
}
