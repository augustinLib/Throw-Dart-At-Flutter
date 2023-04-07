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