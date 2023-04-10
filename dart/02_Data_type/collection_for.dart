void main() {
  var name_list = ["dart", "python", "javascript"];
  var new_name_list = [
    "RUST",
    "GO",
    "TypeScript",
    for (var name in name_list) "major lang : $name",
  ];

  print(new_name_list);
}