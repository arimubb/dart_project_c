import 'dart:io';

void main() {
  print("Калькулятор площади прямоугольника");
  try {
    stdout.write("Введите длину: ");
    String? length = stdin.readLineSync();
    stdout.write("Введите ширину: ");
    String? width = stdin.readLineSync();

    if (length == null || width == null) {
      print("Ошибка: Пустой ввод.");
      return;
    }

    double a = double.parse(length);
    double b = double.parse(width);
    double result = a * b;
    print("Площадь прямоугольника равен: $result");
  } on FormatException {
    print("Ошибка: Введите число!!");
  } catch (e) {
    print("Ошибка: ${e.toString()}");
  }
}
