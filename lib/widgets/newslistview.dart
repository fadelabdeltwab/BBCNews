import 'package:flutter/material.dart';
import 'package:news/models/articles_model.dart';
import 'package:news/widgets/newstile.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 22),
                child: NewsTile(
                  articleModel: articles[index],
                ),
              );
            },
            childCount: articles.length,
          ),
        ),
      ],
    );
  }
}
