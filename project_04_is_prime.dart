import 'dart:io';

bool isPrime(int n) {
  if (n < 2) return false; // Числа меньше 2 не считаются простыми

  // Проверяем делимость от 2 до квадратного корня из n
  for (int i = 2; i <= n ~/ i; i++) {
    if (n % i == 0) {
      return false; // Нашли делитель — число не простое
    }
  }
  return true; // Делителей не нашли — число простое
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
    if (isPrime(number)) {
      print("$number - простое число");
    } else {
      print("$number - не простое число");
    }
  } on FormatException {
    print("Ошибка: введите корректное целое число");
  }
}
