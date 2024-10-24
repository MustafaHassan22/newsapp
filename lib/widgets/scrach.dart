
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:newsapp/models/article_model.dart';
// import 'package:newsapp/services/news_service.dart';
// import 'package:newsapp/widgets/news_tile.dart';

// class NewsListView extends StatefulWidget {
//   const NewsListView({
//     super.key,
//   });

//   @override
//   State<NewsListView> createState() => _NewsListViewState();
// }

// class _NewsListViewState extends State<NewsListView> {
//   bool isloading = true;
//   List<ArticalModel> articales = [];
//   @override
//   void initState() {
//     super.initState();
//     getNews();
//   }

//   Future<void> getNews() async {
//     articales = await NewsServices(Dio()).getNews();
//     isloading = false;
//     // showDialog(
//     //     context: context,
//     //     builder: (context) {
//     //       return Center(child: CircularProgressIndicator());
//     //     });
//     setState(() {});
//     // Navigator.of(context).pop();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isloading
//         ? SliverToBoxAdapter(
//             child: Center(child: CircularProgressIndicator()),
//           )
//         : SliverList(
//             delegate: SliverChildBuilderDelegate(
//               childCount: articales.length,
//               (context, index) {
//                 return NewsTile(articalModel: articales[index]);
//               },
//             ),
//           );
//   }
// }
