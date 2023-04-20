String sayHello(String name, int age, String country) {
  return "Hello $name, $age olds, came from $country";
}

// named argument 지원하는 함수 만들기
// {}를 사용하여 함수의 argument를 명시해줄 수 있다 (파이썬의 keyword argument와 비슷)
// 또한 default value를 지정해줘야한다
// 아래와 같이 함수를 정의하면, 함수를 호출할 때, argument의 이름을 명시해줄 수 있다
String sayHello2({String name = "init", int age = 0, String country = "init"}) {
  return "Hello $name, $age olds, came from $country";
}

// 유저에게 실제 data를 받아야 해서 default value를 지정해줄 수 없는 경우
// required 키워드를 사용하여, argument를 필수로 받아야 한다고 명시해줄 수 있다
// required의 위치는 argument의 type 앞에 위치해야 한다
String sayHello3({required String name, required int age, required String country}) {
  return "Hello $name, $age olds, came from $country";
}

void main() {
  // 아래와 같은 방식은 python에서의 positional argument와 같다
  print(sayHello("dart", 20, "USA"));

  print(sayHello2(
    age: 10,
    name: "flutter",
    country: "Korea"));

  print(sayHello3(
    age: 10,
    name: "flutter",
    country: "Korea"));
}