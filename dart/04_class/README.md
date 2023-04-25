# class

## Class declaration
dart에서 class는 다음과 같이 선언한다.  
이때, function 내에서는 var 키워드를 사용하여 타입을 명시할 필요는 없지만, class 내에서는 타입을 명시하여 변수를 생성해줘야한다.
```dart
class Player {
  // function 내에서는 var 키워드를 사용하여 타입을 명시할 필요는 없지만,
  // class 내에서는 타입을 명시하여 변수를 생성해줘야함
  final String name = "Dart";
  int level = 1;

  void sayHello() {
    // dart의 class에서는 this나 self와 같은 키워드를 사용하지 않아도 된다
    // 다만, this 키워드는 사용 가능하긴 하다
    // 메소드 내의 변수와 class의 property가 같은 이름을 가지고 있을 때 this를 사용한다
    print("Hello, I'm $name");
  }
}

void main() {
  var player = Player();
  print(player.name);
  print(player.level);
  player.sayHello();
}
```

## Constructor
dart에서는 constructor(생성자)를 다음과 같이 선언한다.  
```dart
class Player {
  // late 키워드를 이용하여 이러한 late키워드는 초기 데이터 없이 변수를 선언
  // 이후 생성자로 하여금 값을 받게 함
  late final String name;
  late int level;

  // Constructor(생성자)의 이름은 class의 이름과 같아야 함
  Player(String name, int xp) {
    this.name = name;
    this.level = xp;
  }

  void sayHello() {
    // dart의 class에서는 this나 self와 같은 키워드를 사용하지 않아도 된다
    // 다만, this 키워드는 사용 가능하긴 하다
    // 메소드 내의 변수와 class의 property가 같은 이름을 가지고 있을 때 this를 사용한다
    print("Hello, I'm $name");
  }
}


class Player2 {
  // late 키워드를 이용하지 않고 생성자 구현
  final String name;
  int level;

  // Constructor(생성자)의 이름은 class의 이름과 같아야 함
  // late 키워드를 이용하지 않고 생성자 구현
  Player2(this.name, this.level) {}

  void sayHello() {
    // dart의 class에서는 this나 self와 같은 키워드를 사용하지 않아도 된다
    // 다만, this 키워드는 사용 가능하긴 하다
    // 메소드 내의 변수와 class의 property가 같은 이름을 가지고 있을 때 this를 사용한다
    print("Hello, I'm $name");
  }
}

void main() {
  var player = Player("dart", 1);
  print(player.name);
  print(player.level);
  player.sayHello();


  var player2 = Player2("Flutter", 2);
  print(player2.name);
  print(player2.level);
  player2.sayHello();
}
```

## Named Constructor Parameters
dart에서는 Named Constructor Parameters를 다음과 같이 선언한다.  
(함수에서의 named parameter와 동일하다)
```dart
class Player {
  final String name;
  int level;
  int age;

  // named constructor parameter
  // 함수의 named parameter처럼, default값을 주거나 required keyword 사용
  Player({required this.name, required  this.level, required this.age});

  void sayHello() {
    // dart의 class에서는 this나 self와 같은 키워드를 사용하지 않아도 된다
    // 다만, this 키워드는 사용 가능하긴 하다
    // 메소드 내의 변수와 class의 property가 같은 이름을 가지고 있을 때 this를 사용한다
    print("Hello, I'm $name");
  }
}

void main() {
  var player = Player(name: "dart", 
  level: 1, 
  age: 10);
  print(player.name);
  print(player.level);
  print(player.age);
  player.sayHello();
}

```

## Named Constructor
Default constructord와 다르게 동작하는 Constructor를 만들고 싶을 때 Named Constructor를 사용한다  
Named Constructor는 class의 이름 뒤에 .을 붙이고 생성자의 이름을 붙여준다  
parameter 선언부는 default constructor와 다르게 this.varible이 아닌, 함수의 parameter와 같이 선언해준다  
이후 : 을 이용하여 this.variable = parameter; 혹은 다른 값으로 선언해주는데,  
**:은 dart로 하여금 객체를 초기화하겠다고 선언하는 역할을 한다**

```dart
class Player {
  final String name;
  // 같은 자료형의 변수 한번에 선언 가능
  int level, age;
  String team;

  // named constructor는 named constructor parameter와 다르다
  // 아래와 같은 constructor는 default constructor
  Player(
      {required this.name,
      required this.level,
      required this.age,
      required this.team});

// Default constructord와 다르게 동작하는 Constructor를 만들고 싶을 때 Named Constructor를 사용한다
// Named Constructor는 class의 이름 뒤에 .을 붙이고 생성자의 이름을 붙여준다
// parameter 선언부는 default constructor와 다르게 this.varible이 아닌, 함수의 parameter와 같이 선언해준다
// 이후 : 을 이용하여 this.variable = parameter; 혹은 다른 값으로 선언해준다
// :은 dart로 하여금 객체를 초기화하겠다고 선언하는 역할
  Player.createBluePlayer({
    required String name,
    required int level,
    required int age,
  })  : this.name = name,
        this.level = level,
        this.age = age,
        this.team = "blue";

  // named parameter를 사용하지 않고도 선언 가능
  Player.createRedPlayer(
    String name,
    int level,
    int age,
  // :은 dart로 하여금 객체를 초기화하겠다고 선언하는 역할
  ) : this.name = name,
        this.level = level,
        this.age = age,
        this.team = "red";

  void sayHello() {
    // dart의 class에서는 this나 self와 같은 키워드를 사용하지 않아도 된다
    // 다만, this 키워드는 사용 가능하긴 하다
    // 메소드 내의 변수와 class의 property가 같은 이름을 가지고 있을 때 this를 사용한다
    print("Hello, I'm $name");
  }
}

void main() {
  var player = Player(name: "dart", level: 1, age: 10, team: "black");
  print(player.name);
  print(player.level);
  print(player.age);
  print(player.team);
  player.sayHello();

  // named constructor를 사용하여 객체를 생성
  var bluePlayer = Player.createBluePlayer(name: "flutter", level: 2, age: 20);
  print(bluePlayer.name);
  print(bluePlayer.level);
  print(bluePlayer.age);
  print(bluePlayer.team);
  bluePlayer.sayHello();

  // named constructor를 사용하여 객체를 생성
  var redPlayer = Player.createRedPlayer("flutter", 2, 20);
  print(redPlayer.name);
  print(redPlayer.level);
  print(redPlayer.age);
  print(redPlayer.team);
}

```

## Cascade Notation
cascade operator로 property에 접근하여 값을 한번에, 간편하게 변경할 수 있다  
```dart
class Player {
  final String name;
  int level;
  String team;

Player({required this.name, required this.level, required this.team});

  void sayHello() {
    print("Hello, I'm $name");
  }
}

void main() {
  // 객체 생성과 동시에 cascade notation 사용
  // cascade notation을 사용할 때 생성자 뒤의 ; 제거
  var player = Player(name: "dart", level: 1, team: "Flutter")
  // cascade operator로 property에 접근하여 값을 변경할 수 있다
  // cascade operator = ..
  // cascade operator를 사용할 때 맨 마지막 줄에만 ;을 붙여준다
    ..level = 10
    ..team = "Blue";

  // cascade notation은 객체가 생성된 이후에도 사용 가능하다
  // 이 경우에는 player2의 level과 team이 변경됨과 동시에, player의 level과 team도 변경된다
  // 이는 player와 player2가 같은 객체를 참조하고 있기 때문이다
  // 이 성질을 이용하여, 객체가 생성된 이후에도 cascade notation을 사용할 수 있다
  var player2 = player
    ..level = 20
    ..team = "Red";

  print(player.name);
  print(player.level);
  print(player.team);
  player.sayHello();

  print(player2.name);
  print(player2.level);
  print(player2.team);
  player2.sayHello();

}

```

## Enums
Enum은 선택의 폭을 좁혀주어 parameter의 입력을 제한할 수 있다
```dart
// Team 이라는 enum을 선언
enum Team { red, blue, green }

class Player {
  final String name;
  int level;
  // team property의 타입을 Team enum으로 지정
  Team team;

Player({required this.name, required this.level, required this.team});

  void sayHello() {
    print("Hello, I'm $name");
  }
}

void main() {
  // team property의 타입이 Team enum이므로, Team.red와 같이 enum의 값을 넣어줘야 한다
  var player = Player(name: "dart", level: 1, team: Team.blue)
    ..level = 10
    // team property의 타입이 Team enum이므로, Team.red와 같이 enum의 값을 넣어줘야 한다
    ..team = Team.red;

  print(player.name);
  print(player.level);
  print(player.team);
  player.sayHello();
}

```

## Abstract Class
Abstract Class는 객체를 생성할 수 없는 class이다
이는 다른 class들이 직접 구현해야하는 메소드들을 모아놓은 설게도와 같다  
abstract class는 class 앞에 abstract 키워드를 붙여서 선언하며  
abstract class 내부에서는 method 내부를 구현하지는 않고, method의 형태(이름과 반환형)만 정의한다
```dart
// abstract class는 class 앞에 abstract 키워드를 붙여서 선언한다
abstract class Human {
// abstract class 내부에서는 method 내부를 구현하지는 않고, method의 형태(이름과 반환형)만 정의한다
  void walk();
}

enum Team { red, blue, green }

// abstract class의 형태를 사용하고 싶으면 extends 키워드를 사용한다
// abstract class를 상속받은 class는 abstract class의 method를 구현해야 한다
class Player extends Human {
  final String name;
  int level;
  Team team;

Player({required this.name, required this.level, required this.team});

  void sayHello() {
    print("Hello, I'm $name");
  }
  // abstract class의 walk method를 구현
  void walk() {
    print("walk");
  }
}


void main() {
  var player = Player(name: "dart", level: 1, team: Team.blue)
    ..level = 10
    ..team = Team.red;

  print(player.name);
  print(player.level);
  print(player.team);
  player.sayHello();
}

```