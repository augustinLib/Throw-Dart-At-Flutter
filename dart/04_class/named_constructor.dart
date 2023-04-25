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
