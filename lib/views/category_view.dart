import 'package:flutter/material.dart';
import 'package:newsapp/widgets/news_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: CustomScrollView(
          slivers: [
            newsListViewBulider(
              category: category,
            ),
          ],
        ),
      ),
    );
  }
}
