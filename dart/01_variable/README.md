# Variable

## Create variable
`var` 키워드로 변수를 생성할 수 있다.
```dart
void main() {
    var name = 'Lee';
    print(name);
}
```
Dart에서는 변수를 생성할 때 타입을 지정하지 않아도 되지만, 변수 값을 업데이트 할 때 타입을 변경할 수 없다.
```dart
void main() {
    var name = 'Lee';
    // 아래와 같은 변수 값 업데이트는 불가능
    // var name = 1;
    // var name = true
    print(name);
}
```

또한, `var` 키워드 대신 타입을 명시하여 변수를 생성할 수 있다.
```dart
void main() {
    String name = 'Lee';
    print(name);
}
```
> 가능한 `var`키워드를 많이 사용하는 것이 권장되며,  
> 함수나 메소드 내부에 지역 변수를 선언할 때는 `var` 키워드를 사용하고,  
> **class에서 변수나 property를 선언할 때에는 타입을 명시**하여 변수를 생성한다.  

## Dynamic type
Dart에서 변수를 선언할 때, 변수에 아무것도 지정해주지 않으면 `dynamic` 타입이 된다.
```dart
void main() {
    // 변수 선언 시 아무것도 지정해주지 않음
    // -> dynamic 타입
    var name;
    // dynamic 타입은 어떤 타입의 값이든 할당할 수 있다.
    name = "Lee";
    name = 12
    name = true;

    print(name);
}
```

또한, 아래와 같이 명시적으로 `dynamic` 타입을 지정해줄 수 있다.
```dart
void main() {
    // dynamic 타입 지정
    // -> dynamic 타입
    dynamic name;
    // dynamic 타입은 어떤 타입의 값이든 할당할 수 있다.
    name = "Lee";
    name = 12
    name = true;

    print(name);
}
```

이러한 `dynamic` 타입은 필요한 경우에만 선별적으로 사용해야 한다.


## Null Safety
null safety란, 개발자가 `null`값을 참조할 수 없도록 하는 기능이다.  
-> 만약 `null`값을 참조하려고 하면, 런타임 에러가 발생하게 된다.  

dart에서는 `null`값을 참조할 수 없도록 하기 위해, dart에서는 특정 변수가 `null`값이 될 수 있음을 명시적으로 지정해주어야 하며,  
**이를 위해 `null`값을 할당할 수 있는 변수에는 `?`를 붙여주어야 한다.**  
(dart에서는 기본적으로 모든 변수는 non-nullable이다.)  

```dart
void main() {
  String name = "Lee";
  // name은 string 타입이므로 null을 할당할 수 없다.
  // name = null; -> 불가능
  // 변수가 null값을 가질 수 있다고 명시해주는 방법은, 타입 뒤에 ?를 넣어주는 것이다.
  String? name2 = "Park";
  // null값 할당
  name2 = null;
  print(name);
  print(name2);
}
```

nullable한 변수를 처리하기 위해서는, 먼저 null check를 해주어야 한다.  
```dart
void main() {
  String? name2 = "Park";
  name2 = null;
  print(name2);

  //nullable한 변수를 처리하기 위해서는, 먼저 null check를 해주어야 한다.  
  if (name2 != null) {
    print(name2.isNotEmpty);
  }
}
```
그러나 이를 줄여서 처리할 수 있는 방법이 있다.  
```dart
void main() {
  String? name2 = "Park";
  name2 = null;
  // 값이 존재하는지 확인한 뒤 값이 존재하면, 해당 값을 이용하여 연산 진행
  // name2값이 null이 아니라면 name2.isNotEmpty을 실행
  name2?.isEmpty;
}
```

## final
`var` 키워드 대신 `final` 키워드를 사용하면, 변수를 한 번만 할당할 수 있다. (javascript와 typescript에서의 const와 같은 역할)

```dart
void main() {
  final name = 'Dart';
  // name = 'Flutter'; // Error: final 변수는 한 번 할당된 이후에는 값을 변경할 수 없다.
  print(name);
}
```

## const
dart에서의 `const`는 javascript와 typescript에서의 `const`와는 다르다.  
javascript와 typescript에서의 `const`는 dart에서의 `final`과 비슷한 역할을 한다.  

dart에서 `final`은 runtime 상수, `const`는 compile-time 상수이다.  
> **compile-time 상수**: 컴파일 시점에 값을 결정하는 상수. 즉, 컴파일 시점에 값을 알고 있는 값이어야 함  
> **runtime 상수**: 런타임 시점에 값을 결정하는 상수. 즉, 런타임 시점에 값을 알고 있는 값이어야 함  
즉, dart에서 `const`는 **컴파일 시점에 값을 이미 알고 있는 상수**이다.  


```dart
void main() {
  const a = 10;
  print(a);
}
```

## late
`late` 키워드는 `var`이나 `final`키워드 앞에 붙여서 사용할 수 있다.  
이러한 `late`키워드는 초기 데이터 없이 변수를 선언할 수 있게 해준다.  
```dart
void main() {
  // late 키워드를 사용하면, 변수를 선언할 때 값을 할당하지 않아도 된다.
  late final String name;
// do somethong
  name = 'Dart';
  print(name);
}
```
