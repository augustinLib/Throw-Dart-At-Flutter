# Function

## Define function
타 언어와 비슷한 방법으로 함수를 정의할 수 있다.


```dart
void sayHello(String name) {
  // string interpolation
  print("Hello $name");
}

String sayHello2(String name) {
  return "Hello $name";
}

void main() {
  sayHello("Dart");
  String prompt = sayHello2("Flutter");
  print(prompt);

}
```
또한, 아래와 같이 fat arrow syntax를 통해 간단하게 함수를 정의할 수 있다

```dart
// fat arrow syntax
// 값을 반환하는 함수의 경우, 아래와 같이 간소화할 수 있다
String simplesayHello(String name) => "Hello $name";

num plus(num a, num b) => a + b;
```


## Named parameter
dart에서의 function은 named parameter를 지원한다.  
이는 python의 keyword argument와 비슷한 개념이다.  
함수가 keyword argument를 지원하게끔 하기 위해, parameter 부분에 `{}`를 사용한다.  
또한 required 키워드를 사용하여, argument를 필수로 받아야 한다고 명시해주거나 default value를 지정해줘야한다.

```dart
String sayHello(String name, int age, String country) {
  return "Hello $name, $age olds, came from $country";
}

// named argument 지원하는 함수 만들기
// {}를 사용하여 함수의 argument를 명시해줄 수 있다 (파이썬의 keyword argument와 비슷)
// 또한 default value를 지정해줘야한다
// 아래와 같이 함수를 정의하면, 함수를 호출할 때, argument의 이름을 명시해줄 수 있다
String sayHello2({String name = "init", int age = 0, String country = "init"}) {
  return "Hello $name, $age olds, came from $country";
}

// 유저에게 실제 data를 받아야 해서 default value를 지정해줄 수 없는 경우
// required 키워드를 사용하여, argument를 필수로 받아야 한다고 명시해줄 수 있다
// required의 위치는 argument의 type 앞에 위치해야 한다
String sayHello3({required String name, required int age, required String country}) {
  return "Hello $name, $age olds, came from $country";
}

void main() {
  // 아래와 같은 방식은 python에서의 positional argument와 같다
  print(sayHello("dart", 20, "USA"));

  print(sayHello2(
    age: 10,
    name: "flutter",
    country: "Korea"));

  print(sayHello3(
    age: 10,
    name: "flutter",
    country: "Korea"));
}
```

## Optional Positional Parameter
한 함수 내에서 positional parameter와 named parameter를 동시에 사용할 수 있다.
```dart
// 특정 parameter만 named argument로 받고 싶은 경우
// 해당 parameter를 대괄호로 감싸준 뒤, 기본값을 지정해준다.
String sayHello(String name, int age, [String? country = "USA"]) => "Hello $name, $age olds, came from $country";


void main() {
  var temp = sayHello("dart", 20);
  print(temp);
}
```

## Operator
dart에서는 `+`, `-`, `*`, `/` 등의 연산자를 사용할 수 있다.
그 외에, qq operator, qq assignment operator 등이 있다.  

qq operator는 좌항이 null인 경우에 우항을 반환하고, null이 아닌 경우에는 좌항을 반환하는 operator이며,  
qq assignment operator는 좌항이 null인 경우에 우항을 좌항에 할당하는 operator이다.  

```dart
// null일 경우의 분기를 따로 만들어줘야 함
String upperCase(String? str) {
  if (str == null) {
    return "null";
  }
  return str.toUpperCase();
}

// null이 아닌 경우에 대문자 return, null인 경우에는 "null" return
String upperCase2(String? str) => str != null ? str.toUpperCase() : "null";

// QQ operator : ??
// 좌항이 null이 아닌 경우에는 좌항을 반환하고, null인 경우에는 우항을 반환한다
// null이 아닌 경우에 대문자 return, null인 경우에는 "null" return
// 이때 str도 null일 가능성이 있기에 ? 연산자를 붙여줘야 한다
String upperCase3(String? str) => str?.toUpperCase() ?? "null";


void main() {
  print(upperCase("dart"));
  print(upperCase2("dart"));
  print(upperCase3("dart"));

  // QQ assignment operator : ??=
  // 좌항이 null인 경우에 해당 좌항 변수에 우항을 할당한다
  String? nickname;
  nickname ??= "flutter";
  print(nickname);
}
```

## Typedef
typedef는 자료형에 alias를 붙일 수 있게 해줌  
```dart
// typedef는 자료형에 alias를 붙일 수 있게 해줌
typedef ListofInts = List<int>;

ListofInts reserseList(ListofInts list) {
 var reversed = list.reversed;
// list를 reverse하게 되면 iterable이 반환(dart에서 iterable은 list와 같은 타입이 아님)
// 따라서 toList()를 통해 list로 변환
 return reversed.toList();
}

void main() {
  var list = [1, 2, 3, 4, 5];
  print(reserseList(list));
}
```