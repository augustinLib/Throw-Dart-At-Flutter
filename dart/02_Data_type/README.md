# Data Type

## Basic Data Types
dart의 기본적인 데이터 타입은 다음과 같다.
```dart
void main() {
  String name = 'Dart';
  bool isTrue = true;
  int age = 26;
  double height = 1.75;
  // num 자료형은 int와 double을 모두 포함한다.
  // num class의 경우에는 int와 double의 부모 클래스이다.
  num x = 12;
  num y = 12.45;
}
```
python과 비슷하게, dart의 모든 자료형들은 객체로 이루어져 있다. (function도 객체로 취급된다.)

## list
```dart
void main() {
  var numbers = [1, 2, 3];
  List<int> numbers2 = [1, 2, 3, 4];

  // int로 구성된 list에 str을 넣을 수는 없다.
  // List<int> numbers3 = [1, 2, 3];
  // numbers3.add('4'); -> error
  
  // num 자료형으로 list를 선언하고, 정수와 실수형을 동시에 넣을 수는 없다.
  //List<num> = [1, 2, 3, 4.5]; -> error

  // List의 method들
  numbers.first; // 1번째 요소 반환
  numbers.last; // 마지막 요소 반환
  numbers.isEmpty; // 비어있는지 확인
  numbers.add(5); // 요소 추가
  numbers.addAll(numbers2); // iterable한 요소를 추가 (여러 요소 한번에 추가)
  numbers.clear(); // 모든 요소 삭제
  numbers.contains(1); // 특정 요소가 있는지 확인
}
```
dart에서의 list는 collection if와 collection for을 지원한다.  

**collection if**는 아래와 같다.  
```dart
void main() {
  var giveMeFive = true;
  // giveMeFive가 true면 list에 5를 추가하고, false면 추가하지 않는다.
  var numbers = [1,2,3,4, if (giveMeFive) 5];
}
```
이는 다음 코드와 같다.
```dart
void main() {
  var giveMeFive = true;
  // giveMeFive가 true면 list에 5를 추가하고, false면 추가하지 않는다.
  if (giveMeFive) {
    numbers.add(5);
  }
}
```

**collection for**는 아래와 같다.  
```dart
void main() {
  var name_list = ["dart", "python", "javascript"];
  var new_name_list = [
    "RUST",
    "GO",
    "TypeScript",
    for (var name in name_list) "major lang : $name",
  ];

  print(new_name_list);
  // [RUST, GO, TypeScript, major lang : dart, major lang : python, major lang : javascript]
}
```


## String Interpolation
string interpolation은 text에 변수를 추가하는 방법이다  

```dart
void main() {
  var name = "dart";
  var age = 10;
  var greeting = "Hello my name is $name and i'm ${age+2} years old";

  print(greeting);
}
```
이는 python에서의 f-string과 비슷하다  
변수 앞에 $를 붙이고, {}를 사용하여 연산을 할 수 있다.


## Map
Dart에서의 Map은 python의 dictionary와 같다.  


```dart
void main() {
  var player = {
    "name": "Dart",
    "age": 10,
    "height": 1.75,
    "isTrue": true,
  };

  print(player);
  print(player["name"]);
  print(player["age"]);
  print(player["height"]);

  // Map<Key, Value>
  Map<int, bool> map = {1: true, 2: false};
  print(map);
  print(map[1]);

  Map<String, List<int>> map2 = {"a": [1, 2, 3], "b": [4, 5, 6]};
  print(map2);
  print(map2["a"]);
  print(map2["b"]);

  print(player.keys); // key들만 반환
  print(player.values); // value들만 반환
  print(player.isEmpty); // 비어있는지 확인
  print(player.entries); // key와 value를 한 쌍으로 반환
}
```

## Set
Set은 중복되지 않는 값들의 모음이다 (파이썬의 set과 비슷한 개념).  


```dart
void main() {
  var numbers = {1,2,3,4};
  Set<int> numbers2 = {5,6,7,8};
  
  numbers.add(1);
  numbers.add(1);
   
   print(numbers);

}
```