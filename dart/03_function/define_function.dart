void sayHello(String name) {
  // string interpolation
  print("Hello $name");
}

String sayHello2(String name) {
  return "Hello $name";
}

// fat arrow syntax
// 값을 반환하는 함수의 경우, 아래와 같이 간소화할 수 있다
String simplesayHello(String name) => "Hello $name";

num plus(num a, num b) => a + b;

void main() {
  sayHello("Dart");
  String prompt = sayHello2("Flutter");
  print(prompt);

  print(plus(1, 2));
}