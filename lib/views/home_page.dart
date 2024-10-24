import 'package:flutter/material.dart';
import 'package:newsapp/widgets/categories_list_view.dart';
import 'package:newsapp/widgets/news_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                text: 'News',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'Cloud',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(bottom: 18),
                child: CategoriesListView(),
              ),
            ),
            newsListViewBulider(
              category: 'general',
            ),
          ],
        ),
      ),
    );
  }
}






// Column(
//           children: const [
           
//             Expanded(child: NewsListView()),
//           ],
//         ),