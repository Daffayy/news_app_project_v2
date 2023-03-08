import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:news_app_revision/app/data/article_service.dart';
import 'package:news_app_revision/app/modules/article_screen/models/article_models.dart';

class ArticleScreenController extends GetxController {
  RxBool isLoading = false.obs;
  RxList <ListNewsModel> listNews = <ListNewsModel>[].obs;
  final newService = ArticleService();


  @override
  void onInit() {
    super.onInit();
    getListNews();
  }
  Future <void> getListNews () async {
    isLoading(true);
    try {
      final response = await newService.getNews();
      response.map((v) {
        Logger().d(v);
        final news = ListNewsModel.fromJson(v);
        listNews.add(news);
      }).toList();
      isLoading(false);
    }catch (e) {
      isLoading(false);
      print(e.toString());
    }
  }
}
