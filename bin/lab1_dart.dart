// import 'package:lab1_dart/lab1_dart.dart' as lab1_dart;

// void main() 
// {
//   String name = 'артем';
//   int age = 20;
//   double height = 1.75;
//   bool isstudents = true;

//   print(name);
//   print(age);
//   print(height);
//   print(isstudents);

// print('привет, {name}! тебе {age} лет.');
// print('через 5 лет тебе будет ${age +5} лет.');
// print('рост ${height} м , студент :$isstudents');

// var score = 95;
// var language = 'dart';
// print('$language : $score');

// const String appname = 'lab1';
// final int startyear = 2026;
// print('$appname started in $startyear');

// String? city = null;
// if (city != null) {print(city.toUpperCase(),);}
// print(city?. toUpperCase());

// String? nickname = null;
// String display = nickname ?? 'аноним';
// print(display);

// List<String> fruits = ['яблоко','банан','груша'];
// fruits.add('апельсин');
// print(fruits[0]);
// print(fruits.length);

// Map<String, dynamic> person = {'name': 'артем', 'age': 20};
// print(person['name']);
// person['city'] = 'волжский';



// Set<int> ids = {1,2,3,2,1};
// print(ids);
// print(ids.length);

// List<String> fruits2 = ['яблоко' , 'банан' , 'груша'];
// for (var fruits in fruits2){
//   print(fruits);}
// }

import 'dart:math';

double average(List<int> grades) {
  if (grades.isEmpty) return 0;
  int sum = 0;
  for (var grade in grades) {
    sum += grade;
  }
  return sum / grades.length;
}

int maxGrade(List<int> grades) {
  int max = grades[0];
  for (var grade in grades) {
    if (grade > max) max = grade;
  }
  return max;
}

int minGrade(List<int> grades) {
  int min = grades[0];
  for (var grade in grades) {
    if (grade < min) min = grade;
  }
  return min;
}

String letterGrade(double avg) {
  if (avg >= 4.5) return 'Отлично';
  if (avg >= 3.5) return 'Хорошо';
  if (avg >= 2.5) return 'Удовлетворительно';
  return 'Неудовлетворительно';
}

void printStats({required String name, required List<int> grades}) {
  double avg = average(grades);
  print('Имя: $name');
  print('Оценки: $grades');
  print('Средний балл: ${avg.toStringAsFixed(2)}');
  print('Макс: ${maxGrade(grades)}, Мин: ${minGrade(grades)}');
  print('Итог: ${letterGrade(avg)}');
  print('');
}

void main() {
  Map<String, List<int>> students = {
    'Артём Иванов': [5, 4, 5, 3, 4, 5],
    'Мария Петрова': [4, 4, 5, 5, 4, 5],
    'Иван Сидоров': [3, 3, 4, 2, 3, 4],
  };
  print('Анализатор оценок');

  students.forEach((name, grades) {
    printStats(name: name, grades: grades);
  });

  print('Общая статистика');
  int totalStudents = students.length;
  print('Всего студентов: $totalStudents');

  int excellentCount = 0;
  students.forEach((name, grades) {
    if (average(grades) >= 4.5) excellentCount++;
  });
  print('Отличников: $excellentCount из $totalStudents');
}