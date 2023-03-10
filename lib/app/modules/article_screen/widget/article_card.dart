

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_revision/app/routes/app_pages.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard(
  {super.key,
  required this.title,
  required this.description,
  required this.id});

  final String title, description, id;
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: (){
        Get.toNamed(Routes.DETAIL_ARTICLE_SCREEN,arguments: {'id' : id});
        print(id);
      },
      child: Container(
        margin: EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Color(0xffd9d9d9), borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black54,
              blurRadius: 5,
              offset: Offset(0.0, 0.75)
            )
          ]),
        padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
        child: ListTile(
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 18)),
          subtitle: Text(description, style: TextStyle(color: Colors.black,
              fontSize: 16), maxLines: 3, overflow: TextOverflow.ellipsis),
        ),
      ),
    );
  }
}