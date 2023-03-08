import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:news_app_revision/app/modules/article_screen/widget/article_card.dart';
import 'package:skeletons/skeletons.dart';

import '../../../routes/app_pages.dart';
import '../controllers/article_screen_controller.dart';

class ArticleScreenView extends GetView<ArticleScreenController> {
  const ArticleScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Padding(
            padding: EdgeInsets.only(left: 5),
        child: Text(
            'StarNews',
          style: TextStyle(color: Colors.black,fontSize: 14),
          ),
        ),
      ),
      body: Obx(() => SingleChildScrollView(
        child: controller.isLoading.value
            ? SkeletonListTile(hasSubtitle: true, padding: EdgeInsets.all(30),)
            : Column(
          children: [
            ...controller.listNews.reversed.map((item) => ArticleCard(
                title: item.title,
                description: item.body,
                id: item.id.toString(),
              ),
            ),
          ],
        ),
        )),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.SPLASH_SCREEN),
        backgroundColor: Color(0xffd9d9d9),
        child: const Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
