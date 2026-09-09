import 'package:lab1_dart/lab1_dart.dart' as lab1_dart;
string greet(string name)
  return 'Привет, $name!';
void main (){
  print(greet('артем'))
  print(greet('мария'))
}



void descridepet({required string name, string species = 'кот' , int age = 0})
{print('$name - $species , возраст = $age');
}
descridepet(name:'барсик', age : 3)
descridepet(name: 'шарик', species : 'пес')

string repeat(string text, [int times = 2]){
  string result = '';
  for (int i = 0; i < times; i ++ ){result += text;}
  return result;
}
print(repeat('ха'));
print(repeat('ха' , 3));

List<int> numbers = [3,1,4,1,5,9];
numbers.sort((a,b) => b - a)
print(numbers);

List<string> upper = names.map((name) => name.touppercase()).tolist();
print(upper);

List<string> longnames = names.where((name) => name.length > 4).tolist();
print(longnames)
