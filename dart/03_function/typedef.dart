// typedef는 자료형에 alias를 붙일 수 있게 해줌
typedef ListofInts = List<int>;

ListofInts reserseList(ListofInts list) {
 var reversed = list.reversed;
// list를 reverse하게 되면 iterable이 반환(dart에서 iterable은 list와 같은 타입이 아님)
// 따라서 toList()를 통해 list로 변환
 return reversed.toList();
}

void main() {
  var list = [1, 2, 3, 4, 5];
  print(reserseList(list));
}