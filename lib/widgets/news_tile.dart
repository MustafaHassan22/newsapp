import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articalModel});
  final ArticalModel articalModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 18),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: articalModel.image != null
                ? Image.network(
                    articalModel.image!,
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                : SizedBox(),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            articalModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articalModel.subTitle ?? '',
            maxLines: 2,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
