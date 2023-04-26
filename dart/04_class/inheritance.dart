class Human {
  final String name;
  Human({required this.name});

  void sayHello() {
    print("Hello, I'm $name");
  }
}

enum Team { blue, red }

// dart에서의 상속은 extends 키워드를 이용한다
class Player extends Human {
  int level;
  final Team team;

  Player({
    // name은 Human class의 생성자에 전달
    required String name,
    required this.level,
    required this.team,
    // :은 dart로 하여금 객체를 초기화하겠다고 선언하는 역할
    // : 를 이용하여 super class의 생성자에 name을 전달
  }) : super(name: name);

  // 메서드 overriding
  // dart에서의 overriding은 @override 어노테이션을 이용한다
  @override
  void sayHello() {
    super.sayHello();
    print("I'm in $team team");
  }
}

void main() {
  var player = Player(name: "dart", level: 1, team: Team.blue);

  print(player.name);
  print(player.level);
  print(player.team);
  player.sayHello();
}
