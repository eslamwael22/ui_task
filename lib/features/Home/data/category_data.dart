import 'package:flutter/material.dart';
import 'package:ui_screen/generated/l10n.dart';
import '../models/category_model.dart';

class CategoryData {
  static List<CategoryModel> getCategories(BuildContext context) => [
        CategoryModel(
          image: 'assets/images/Group 29458.png',
          title: S.of(context).category1Title,
        ),
        CategoryModel(
          image: 'assets/images/Group 29459.png',
          title: S.of(context).category2Title,
        ),
        CategoryModel(
          image: 'assets/images/Group 29460.png',
          title: S.of(context).category3Title,
        ),
      ];
}
