import 'dart:io';

void main() {
  print("Конвертер температур");

  try {
    stdout.write("Введите направление (C → F / F → C): ");
    String? direction = stdin.readLineSync();

    if (direction == "C → F") {
      stdout.write("Введите температуру в Цельсиях: ");
      String? c = stdin.readLineSync();

      if (c == null) {
        print("Ошибка: пустой ввод");
        return;
      }

      double cc = double.parse(c);
      double ff = cc * 1.8 + 32;
      print('$cc °C = $ff °F');
    } else if (direction == "F → C") {
      stdout.write("Введите температуру в Фаренгейтах: ");
      String? f = stdin.readLineSync();

      if (f == null) {
        print("Ошибка: пустой ввод");
        return;
      }

      double ff = double.parse(f);
      double cc = (ff - 32) / 1.8;
      print('$ff °F = $cc °C');
    } else {
      print("Ошибка: неверное направление!");
    }
  } on FormatException {
    print("Ошибка: нужно ввести число!");
  } catch (e) {
    print("Ошибка: ${e.toString()}");
  }
}
