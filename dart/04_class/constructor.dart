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