void main() {
  String name = "Lee";
  // name은 string 타입이므로 null을 할당할 수 없다.
  // name = null; 
  // 변수가 null값을 가질 수 있다고 명시해주는 방법은, 타입 뒤에 ?를 넣어주는 것이다.
  String? name2 = "Park";
  name2 = null;
  print(name);
  print(name2);

  //nullable한 변수를 처리하기 위해서는, 먼저 null check를 해주어야 한다.  
  if (name2 != null) {
    print(name2.isNotEmpty);
  }
  // 값이 존재하는지 확인한 뒤 값이 존재하면, 해당 값을 이용하여 연산 진행
  // name2값이 null이 아니라면 name2.isNotEmpty을 실행
  name2?.isEmpty;
}