class ArticalModel {
  final String? image;
  final String title;
  final String? subTitle;

  ArticalModel(
      {required this.image, required this.title, required this.subTitle});

  factory ArticalModel.fromJason(jason) {
    return ArticalModel(
        image: jason["urlToImage"],
        title: jason["title"],
        subTitle: jason["description"]);
  }
}
