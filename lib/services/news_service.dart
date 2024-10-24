import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticalModel>> getNews({required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=11f54fb373ee43ed914dc7c04326b44d&category=$category');

      Map<String, dynamic> jasonData = response.data;
      List<dynamic> articales = jasonData["articles"];
      List<ArticalModel> articlesList = [];

      for (var articale in articales) {
        ArticalModel articaleModel = ArticalModel.fromJason(articale);
        articlesList.add(articaleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
