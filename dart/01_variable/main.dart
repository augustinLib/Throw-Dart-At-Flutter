void main() {
  var name = 'Lee';
  String name2 = 'Park';
  name = 'Kim';
  print(name);
  print(name2);

  // 변수 선언 시 아무것도 지정해주지 않음
  // -> dynamic 타입
  var free_var;
  // dynamic 타입은 어떤 타입의 값이든 할당할 수 있다.
  free_var = "Lee";
  free_var = 12;
  free_var = true;
  print(free_var);
  
  // dynamic 타입 지정
  // -> dynamic 타입
  dynamic free_var2;
  // dynamic 타입은 어떤 타입의 값이든 할당할 수 있다.
  free_var2 = "Lee";
  free_var2 = 12;
  free_var2 = true;
  print(free_var2);
}
