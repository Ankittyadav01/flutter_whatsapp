class Questions {
  final String id, image, title, description, time, solution, code, output;

  Questions({
    required this.id,
    required this.image,
    required this.title,
    required this.description,
    required this.time,
    required this.solution,
    required this.code,
    required this.output,
  });
}

List<Questions> data = [
  Questions(
      id: "1",
      image: "assets/images/bag_1.png",
      title: "Office Code1",
      time: "2",
      description: dummyText,
      solution: "solution",
      code: "print(code)",
      output: "ans"),
  Questions(
      id: "2",
      image: "assets/images/bag_1.png",
      title: "Office Code2",
      time: "2",
      description: dummyText,
      solution: "solution",
      code: "print(code)",
      output: "ans"),
  Questions(
      id: "3",
      image: "assets/images/bag_1.png",
      title: "Incriment check",
      time: "2:66 pm",
      description: dummyText,
      solution: "solution",
      code: "print(code)",
      output: "ans"),
  Questions(
      id: "4",
      image: "assets/images/bag_1.png",
      title: "Office Code",
      time: "2",
      description: dummyText,
      solution: "solution",
      code: "print(code)",
      output: "ans"),
];

String dummyText = "this is leetcode problem solution application";
