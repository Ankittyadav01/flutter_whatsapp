class ContentModel {
  String name;
  String message;
  String time;
  String avatarUrl;

  ContentModel(
      {required this.name,
      required this.message,
      required this.time,
      required this.avatarUrl});
}

List<ContentModel> data = [
  ContentModel(
      name: "Ankit Yadav",
      message: "Hii",
      time: "23:59",
      avatarUrl:
          "https://upload.wikimedia.org/wikipedia/commons/1/19/LeetCode_logo_black.png"),
  ContentModel(
      name: "Contain Duplicate",
      message: "contain_duplicate",
      time: "23:59",
      avatarUrl:
          "https://upload.wikimedia.org/wikipedia/commons/1/19/LeetCode_logo_black.png"),
  ContentModel(
      name: "Intersection",
      message: "intersection",
      time: "23:59",
      avatarUrl:
          "https://upload.wikimedia.org/wikipedia/commons/1/19/LeetCode_logo_black.png"),
  ContentModel(
      name: "SingleNumber136",
      message: "single_number_136",
      time: "23:59",
      avatarUrl:
          "https://upload.wikimedia.org/wikipedia/commons/1/19/LeetCode_logo_black.png"),
  ContentModel(
      name: "Two Sums",
      message: "two_sums",
      time: "23:59",
      avatarUrl:
          "https://upload.wikimedia.org/wikipedia/commons/1/19/LeetCode_logo_black.png"),
];
