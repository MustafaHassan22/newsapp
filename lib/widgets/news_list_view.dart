import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticalModel> articales;

  NewsListView({super.key, required this.articales});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articales.length,
        (context, index) {
          return NewsTile(articalModel: articales[index]);
        },
      ),
    );
  }
}
