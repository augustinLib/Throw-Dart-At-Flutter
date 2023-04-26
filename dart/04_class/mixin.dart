// mixin은 다른 class에 있는 프로퍼티와 메서드를 가져와서 사용할 수 있게 해준다
// 생성자는 가질 수 없다
// 여러개의 mixin을 사용할 수 있으며, 재사용이 가능하다
class Strong {
  final double strengthLevel = 12.42;
}

class QuickRuner {
  void runQuick() {
    print("run!!");
  }
}

enum Team { blue, red }

// with 키워드를 이용하여 mixin을 사용한다
// 이때, 대상 class의 프로퍼티와 메서드를 그대로 가져온다
class Player with Strong, QuickRuner {
  final String name;
  int level;
  final Team team;

  Player({required this.name, required this.level, required this.team});

  void sayHello() {
    print("Hello, I'm $name");
  }
}

void main() {
  var player = Player(name: "dart", level: 1, team: Team.blue);

  print(player.name);
  print(player.level);
  print(player.team);
  print(player.strengthLevel);
  player.sayHello();
  player.runQuick();
}
