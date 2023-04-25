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
  player.walk();
}
