import 'package:flutter/material.dart';
import 'package:ui_screen/generated/l10n.dart';
import '../models/most_order_model.dart';

class MostOrderData {
  static List<MostOrderModel> getItems(BuildContext context) => [
        MostOrderModel(
          image: 'assets/images/Image 40.png',
          title: S.of(context).mostOrder1Title,
          description: S.of(context).mostOrder1Description,
          rate: '4.5',
          deliveryCost: S.of(context).mostOrder1DeliveryCost,
          time: S.of(context).mostOrder1Time,
        ),
        MostOrderModel(
          image: 'assets/images/spectra.png',
          title: S.of(context).mostOrder2Title,
          description: S.of(context).mostOrder2Description,
          rate: '4.5',
          deliveryCost: S.of(context).mostOrder2DeliveryCost,
          time: S.of(context).mostOrder2Time,
        ),
        MostOrderModel(
          image: 'assets/images/Image 40.png',
          title: S.of(context).mostOrder1Title,
          description: S.of(context).mostOrder1Description,
          rate: '4.5',
          deliveryCost: S.of(context).mostOrder1DeliveryCost,
          time: S.of(context).mostOrder1Time,
        ),
        MostOrderModel(
          image: 'assets/images/spectra.png',
          title: S.of(context).mostOrder2Title,
          description: S.of(context).mostOrder2Description,
          rate: '4.5',
          deliveryCost: S.of(context).mostOrder2DeliveryCost,
          time: S.of(context).mostOrder2Time,
        ),
      ];
}
