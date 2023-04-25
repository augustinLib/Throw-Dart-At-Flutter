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
