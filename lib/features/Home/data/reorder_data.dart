import 'package:flutter/material.dart';
import 'package:ui_screen/generated/l10n.dart';
import '../models/reorder_model.dart';

class ReorderData {
  static List<ReorderModel> getItems(BuildContext context) => [
        ReorderModel(
          image: 'assets/images/Image 36.png',
          title: S.of(context).reorder1Title,
          description: S.of(context).reorder1Description,
        ),
        ReorderModel(
          image: 'assets/images/Group 29324.png',
          title: S.of(context).reorder2Title,
          description: S.of(context).reorder2Description,
        ),
        ReorderModel(
          image: 'assets/images/Image 36.png',
          title: S.of(context).reorder3Title,
          description: S.of(context).reorder3Description,
        ),
      ];
}
