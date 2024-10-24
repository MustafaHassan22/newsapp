import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widgets/news_list_view.dart';

class newsListViewBulider extends StatefulWidget {
  const newsListViewBulider({
    super.key,
    required this.category,
  });
  final String category;

  @override
  State<newsListViewBulider> createState() => _newsListViewBuliderState();
}

class _newsListViewBuliderState extends State<newsListViewBulider> {
  bool isloading = true;
  var futuer;
  @override
  void initState() {
    futuer = NewsServices(Dio()).getNews(category: widget.category);
    super.initState();
  }
  // List<ArticalModel> articales = [];
  // void initState() {
  //   super.initState();
  //   getNews();
  // }

  // Future<void> getNews() async {
  //   articales = await NewsServices(Dio()).getNews();
  //   isloading = false;
  //   setState(() {});
  //   // showDialog(
  //   //     context: context,
  //   //     builder: (context) {
  //   //       return Center(child: CircularProgressIndicator());
  //   //     });
  //   // Navigator.of(context).pop();
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
        future: futuer,
        builder: (constext, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(articales: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
                child: Text("oops there's an error, try later"));
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
    // return isloading
    //     ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //     : articales.isNotEmpty
    //         ? NewsListView(articales: articales)
    //         : Text("oops ther's an error, try later");
  }
}
