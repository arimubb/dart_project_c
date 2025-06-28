import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int target = random.nextInt(100) + 1;

  print("Я загадал число от 1 до 100. Попробуй угадать!");

  while (true) {
    stdout.write("Введите Ваше число: ");
    String? input = stdin.readLineSync();

    if (input == null) {
      print("Ошибка: пустой ввод.");
      continue; // попросить ввести снова
    }
    int? guess;

    try {
      guess = int.parse(input);
    } catch (e) {
      print("Ошибка: нужно ввести целое число.");
      continue; // повторяем цикл
    }

    if (guess < 1 || guess > 100) {
      print("Введите число в диапазоне от 1 до 100.");
      continue;
    }

    if (guess == target) {
      print("Поздравляю! Вы угадали число $target.");
      break; // выход из цикла, игра окончена
    } else if (guess < target) {
      print("Моё число больше.");
    } else {
      print("Моё число меньше.");
    }
  }
}
