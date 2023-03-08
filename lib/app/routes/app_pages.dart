import 'package:get/get.dart';

import '../modules/article_screen/bindings/article_screen_binding.dart';
import '../modules/article_screen/views/article_screen_view.dart';
import '../modules/detail_article_screen/bindings/detail_article_screen_binding.dart';
import '../modules/detail_article_screen/views/detail_article_screen_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [

    GetPage(
      name: _Paths.ARTICLE_SCREEN,
      page: () => const ArticleScreenView(),
      binding: ArticleScreenBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_ARTICLE_SCREEN,
      page: () => const DetailArticleScreenView(),
      binding: DetailArticleScreenBinding(),
    ),
  ];
}
