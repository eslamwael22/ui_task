import 'package:flutter/material.dart';
import 'package:ui_screen/generated/l10n.dart';
import 'package:ui_screen/features/Home/models/love_model.dart';

class MayLoveData {
  static List<MayLoveModel> getItems(BuildContext context) => [
        MayLoveModel(
          image: 'assets/images/Frame 1 (3).png',
          title: S.of(context).love1Title,
          oldPrice: 60,
          newPrice: 30,
          restaurantName: S.of(context).love1RestaurantName,
          restaurantLogo: 'assets/images/Image 36.png',
        ),
        MayLoveModel(
          image: 'assets/images/Frame 1 (3).png',
          title: S.of(context).love2Title,
          oldPrice: 60,
          newPrice: 30,
          restaurantName: S.of(context).love2RestaurantName,
          restaurantLogo: 'assets/images/Image 36.png',
        ),
      ];
}
