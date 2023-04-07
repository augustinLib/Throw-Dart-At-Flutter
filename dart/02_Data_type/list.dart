void main() {
  var numbers = [1, 2, 3];
  List<int> numbers2 = [1, 2, 3, 4];

  // int로 구성된 list에 str을 넣을 수는 없다.
  // List<int> numbers3 = [1, 2, 3];
  // numbers3.add('4'); -> error
  
  // num 자료형으로 list를 선언하고, 정수와 실수형을 동시에 넣을 수는 없다.
  //List<num> = [1, 2, 3, 4.5]; -> error

  // List의 method들
  numbers.first; // 1번째 요소 반환
  numbers.last; // 마지막 요소 반환
  numbers.isEmpty; // 비어있는지 확인
  numbers.add(5); // 요소 추가
  numbers.addAll(numbers2); // iterable한 요소를 추가 (여러 요소 한번에 추가)
  numbers.clear(); // 모든 요소 삭제
  numbers.contains(1); // 특정 요소가 있는지 확인
}