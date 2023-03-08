import 'package:get/get.dart';

import '../controllers/article_screen_controller.dart';

class ArticleScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ArticleScreenController>(
      () => ArticleScreenController(),
    );
  }
}
