import 'dart:io';

void main() {
  // Шаг 1: Приглашаем пользователя ввести текст
  print("Введите текст:");

  // Шаг 2: Считываем строку из консоли
  String? input = stdin.readLineSync();

  if (input == null || input.trim().isEmpty) {
    // Если ввода нет или он пустой (после удаления пробелов), выводим сообщение
    print("Пустая строка, слов нет.");
    return; // Завершаем программу
  }

  // Шаг 3: Очищаем строку от лишних пробелов в начале и конце
  String trimmedInput = input.trim();

  // Шаг 4: Разбиваем строку по пробелам — получается список слов и, возможно, пустых элементов
  List<String> words = trimmedInput.split(' ');

  // Шаг 5: Фильтруем список, убирая пустые строки, которые могут появиться из-за нескольких подряд пробелов
  List<String> filteredWords = words.where((word) => word.isNotEmpty).toList();

  // Шаг 6: Считаем количество слов
  int wordCount = filteredWords.length;

  // Шаг 7: Выводим результат
  print("Количество слов: $wordCount");
}
