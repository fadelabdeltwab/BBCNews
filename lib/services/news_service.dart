import 'package:dio/dio.dart';
import 'package:news/models/articles_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);
  static List<ArticleModel> articlesList = [];

  Future<List<ArticleModel>> getGeneralNews() async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=f6cb5285ad364ccdbc50a9a0ac129218');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
