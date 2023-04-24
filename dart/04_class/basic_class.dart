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