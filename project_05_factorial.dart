import 'dart:io';

int factorialUsingLoop(int n) {
  int result = 1;
  for (int i = 1; i <= n; i++) {
    result *= i;
  }
  return result;
}

void main() {
  stdout.write("Введите число: ");
  String? input = stdin.readLineSync();
  if (input == null) {
    print('Ввод отсутсвует');
    return;
  }
  try {
    int number = int.parse(input);
    print("Факториал числа $number = ${factorialUsingLoop(number)}.");
  } on FormatException {
    print("Ошибка: введите корректное целое число");
  }
}
