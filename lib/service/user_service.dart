
import 'package:dio/dio.dart';

import '../models/news_model.dart';

class NewsService {
   Future<dynamic> getNews() async {
    try {
      Response response = await Dio().get("http://192.168.42.35:4000/news");
      if (response.statusCode == 200) {
        return NewsModels.fromJson(response.data);
      } else {
        return response.statusMessage.toString();
      }
    } on DioError catch (e) {
      return e.message.toString();
    }
  }
}
