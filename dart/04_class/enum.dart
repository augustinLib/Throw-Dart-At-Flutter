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
