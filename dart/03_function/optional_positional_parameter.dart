// 특정 parameter만 named argument로 받고 싶은 경우
// 해당 parameter를 대괄호로 감싸준 뒤, 기본값을 지정해준다.
String sayHello(String name, int age, [String? country = "USA"]) => "Hello $name, $age olds, came from $country";


void main() {
  var temp = sayHello("dart", 20);
  print(temp);
}