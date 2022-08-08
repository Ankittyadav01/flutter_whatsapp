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
      title: "Two Sum",
      time: "2",
      description:
          ' "Given an array of integers nums and an integer targe",\n return indices of the two numbers such that they add up to target.","You may assume that each input would have exactly one solution, and you may not use the same element twice.You can return the answer in any order.',
      solution:
          "Input: nums = [2,7,11,15], target = 9,\n Output: [0,1], \n Explanation: Because nums[0] + nums[1] == 9, we return [0, 1",
      code:
          "main() { \n List<int> list = [2, 4, 6, 2, 9]; \n int target = 6;\n  print(twoSum(list, target)); \n } \n twoSum(list, target) { \n for (var i = 0; i < list.length; i++) { \n  for (var j = i + 1; j < list.length; j++) { \n   if (list[i] + list[j] == target) { \n   return [i, j]; \n  }  } \n ",
      output: "Output: [0,1]"),
  Questions(
      id: "2",
      image: "assets/images/bag_1.png",
      title: "Office Code",
      time: "2",
      description: dummyText,
      solution: "solution",
      code: "print(code)",
      output: "ans"),
  Questions(
      id: "3",
      image: "assets/images/bag_1.png",
      title: "Incriment chrck",
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
