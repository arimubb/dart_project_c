import 'dart:io';

void main() {
  stdout.write("Введите текст: ");
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    print("Не введен текст.");
    return;
  }

  // Разделаем текст на слова
  List<String> words = input.split(' ');

  // Тут будешь собирать частоту появления каждого слова
  Map<String, int> frequencies = {};

  // Далее заполните эту мапу с помощью подсказки…
  for (String word in words) {
    if (frequencies.containsKey(word)) {
      frequencies[word] = frequencies[word]! + 1;
    } else {
      frequencies[word] = 1;
    }
  }

  print("Частота появления каждого слова:");
  frequencies.forEach((word, freq) {
    print("$word: $freq");
  });
}
