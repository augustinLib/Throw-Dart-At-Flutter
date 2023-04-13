void main() {
  var player = {
    "name": "Dart",
    "age": 10,
    "height": 1.75,
    "isTrue": true,
  };

  print(player);
  print(player["name"]);
  print(player["age"]);
  print(player["height"]);

  // Map<Key, Value>
  Map<int, bool> map = {1: true, 2: false};
  print(map);
  print(map[1]);

  Map<String, List<int>> map2 = {"a": [1, 2, 3], "b": [4, 5, 6]};
  print(map2);
  print(map2["a"]);
  print(map2["b"]);

  print(player.keys); // key들만 반환
  print(player.values); // value들만 반환
  print(player.isEmpty); // 비어있는지 확인
  print(player.entries); // key와 value를 한 쌍으로 반환
}
