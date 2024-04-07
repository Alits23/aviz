import 'package:aviz/Features/Home/data/model/promotion.dart';
import 'package:aviz/Widgets/cashed_network_image.dart';
import 'package:aviz/constans/colors/color.dart';
import 'package:aviz/util/number_extension.dart';
import 'package:flutter/material.dart';

class HotPromotionCard extends StatelessWidget {
  final Promotion promotion;
  const HotPromotionCard(this.promotion, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 224.0,
      height: 267.0,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        shadows: const [
          BoxShadow(
            color: CustomColors.textGerylight,
            blurRadius: 10.0,
            spreadRadius: 0.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              width: 192.0,
              height: 112.0,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: CashedImage(
                imageUrl: promotion.thumbnail,
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    promotion.name,
                    style: const TextStyle(
                      fontFamily: 'sb',
                      fontSize: 14.0,
                      color: CustomColors.textGery1,
                    ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    promotion.description,
                    style: const TextStyle(
                      fontFamily: 'dana',
                      fontSize: 12.0,
                      color: CustomColors.textGerylight,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      const Text(
                        'قیمت:',
                        style: TextStyle(
                          fontFamily: 'sb',
                          fontSize: 12.0,
                          color: CustomColors.textGery1,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        promotion.price.convertToPrice(),
                        style: const TextStyle(
                          fontSize: 12.0,
                          fontFamily: 'sb',
                          color: CustomColors.primaryColor1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
