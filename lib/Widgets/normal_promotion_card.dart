import 'package:aviz/Features/Home/data/model/promotion.dart';
import 'package:aviz/Widgets/cashed_network_image.dart';
import 'package:aviz/constans/colors/color.dart';
import 'package:aviz/util/number_extension.dart';
import 'package:flutter/material.dart';

class NormalPromotionCard extends StatelessWidget {
  final Promotion promotion;
  const NormalPromotionCard(this.promotion, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 139.0,
      decoration: ShapeDecoration(
        color: Colors.white,
        shadows: const [
          BoxShadow(
            color: CustomColors.shadow,
            blurRadius: 10.0, // soften the shadow
            spreadRadius: 0.0, //extend the shadow
            offset: Offset(0.0, 4.0),
          ),
        ],
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(4.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    promotion.name,
                    style: const TextStyle(
                      fontFamily: 'sb',
                      fontSize: 14.0,
                      color: CustomColors.textGery700,
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
                      color: CustomColors.textGery300,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    children: [
                      const Text(
                        'قیمت:',
                        style: TextStyle(
                          fontFamily: 'sb',
                          fontSize: 12.0,
                          color: CustomColors.textGery700,
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
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 16.0,
            ),
            ClipRect(
              child: SizedBox(
                width: 111.0,
                height: 107.0,
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2.0),
                    child: CashedImage(
                      imageUrl: promotion.thumbnail,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
