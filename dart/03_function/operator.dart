// null일 경우의 분기를 따로 만들어줘야 함
String upperCase(String? str) {
  if (str == null) {
    return "null";
  }
  return str.toUpperCase();
}

// null이 아닌 경우에 대문자 return, null인 경우에는 "null" return
String upperCase2(String? str) => str != null ? str.toUpperCase() : "null";

// QQ operator : ??
// 좌항이 null이 아닌 경우에는 좌항을 반환하고, null인 경우에는 우항을 반환한다
// null이 아닌 경우에 대문자 return, null인 경우에는 "null" return
// 이때 str도 null일 가능성이 있기에 ? 연산자를 붙여줘야 한다
String upperCase3(String? str) => str?.toUpperCase() ?? "null";


void main() {
  print(upperCase("dart"));
  print(upperCase2("dart"));
  print(upperCase3("dart"));

  // QQ assignment operator : ??=
  // 좌항이 null인 경우에 해당 좌항 변수에 우항을 할당한다
  String? nickname;
  nickname ??= "flutter";
  print(nickname);
}