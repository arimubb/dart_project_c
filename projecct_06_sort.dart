import 'dart:io';

void main() {
  stdout.write("Введите текст: ");
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print("Пустая строка, нет чисел");
    return;
  }

  List<String> words = input.split(" ");

  // Далее просто вызываем sort()
  words.sort();

  print("Отсортированные по алфавиту слова:");
  for (String word in words) {
    print(word);
  }
}
