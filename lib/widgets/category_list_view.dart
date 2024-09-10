import 'package:flutter/material.dart';
import 'package:news/models/category_model.dart';
import 'package:news/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({super.key});
  final List<CategoryModel> categories = [
    CategoryModel(
      categoryName: 'Business',
      imageAsset: 'assets/business.png',
    ),
    CategoryModel(
      categoryName: 'Helth',
      imageAsset: 'assets/health.avif',
    ),
    CategoryModel(
      categoryName: 'Science',
      imageAsset: 'assets/science.avif',
    ),
    CategoryModel(
      categoryName: 'Sports',
      imageAsset: 'assets/sports.png',
    ),
    CategoryModel(
      categoryName: 'Technology',
      imageAsset: 'assets/technology.jpeg',
    ),
    CategoryModel(
      categoryName: 'Entertainment',
      imageAsset: 'assets/entertaiment.avif',
    ),
    CategoryModel(
      categoryName: 'General',
      imageAsset: 'assets/general.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, Index) {
          return CategoryCard(
            category: categories[Index],
          );
        },
      ),
    );
  }
}
