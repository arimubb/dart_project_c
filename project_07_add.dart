import 'dart:io';

void main() {
  stdout.write("Введите числа, а мы определим какие четные какие нет : ");

  String? input = stdin.readLineSync();
  if (input == null || input.trim().isEmpty) {
    print("Пустая строка, нет чисел");
    return;
  }

  List<String> strNumbers = input.split(' ');
  List<int> numbers = [];

  for (String s in strNumbers) {
    numbers.add(int.parse(s));
  }
  for (int number in numbers) {
    if (number % 2 == 0) {
      print("$number - четное");
    } else {
      print("$number - нечетное");
    }
  }
}
