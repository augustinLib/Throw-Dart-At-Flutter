class Player {
  final String name;
  int level;
  int age;

  // named constructor parameter
  // 함수의 named parameter처럼, default값을 주거나 required keyword 사용
  Player({required this.name, required this.level, required this.age});

  void sayHello() {
    // dart의 class에서는 this나 self와 같은 키워드를 사용하지 않아도 된다
    // 다만, this 키워드는 사용 가능하긴 하다
    // 메소드 내의 변수와 class의 property가 같은 이름을 가지고 있을 때 this를 사용한다
    print("Hello, I'm $name");
  }
}

void main() {
  var player = Player(name: "dart", level: 1, age: 10);
  print(player.name);
  print(player.level);
  print(player.age);
  player.sayHello();
}
