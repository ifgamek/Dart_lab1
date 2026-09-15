import 'package:lab1_dart/lab1_dart.dart' as lab1_dart;

void main() 
{
  String name = 'артем';
  int age = 20;
  double height = 1.75;
  bool isstudents = true;

  print(name);
  print(age);
  print(height);
  print(isstudents);

print('привет, {name}! тебе {age} лет.');
print('через 5 лет тебе будет ${age +5} лет.');
print('рост ${height} м , студент :$isstudents');

var score = 95;
var language = 'dart';
print('$language : $score');

const String appname = 'lab1';
final int startyear = 2026;
print('$appname started in $startyear');

String? city = null;
if (city != null) {print(city.toUpperCase(),);}
print(city?. toUpperCase());

String? nickname = null;
String display = nickname ?? 'аноним';
print(display);

List<String> fruits = ['яблоко','банан','груша'];
fruits.add('апельсин');
print(fruits[0]);
print(fruits.length);

Map<String, dynamic> person = {'name': 'артем', 'age': 20};
print(person['name']);
person['city'] = 'волжский';



Set<int> ids = {1,2,3,2,1};
print(ids);
print(ids.length);

List<String> fruits2 = ['яблоко' , 'банан' , 'груша'];
for (var fruits in fruits2){
  print(fruits);}
}

