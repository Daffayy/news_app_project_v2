import 'package:get/get.dart';

import '../controllers/detail_article_screen_controller.dart';

class DetailArticleScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailArticleScreenController>(
      () => DetailArticleScreenController(),
    );
  }
}
