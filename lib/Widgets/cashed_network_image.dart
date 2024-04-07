import 'package:aviz/constans/colors/color.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CashedImage extends StatelessWidget {
  const CashedImage({super.key, this.imageUrl, this.radius = 0});
  final String? imageUrl;
  final double radius;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: imageUrl!,
        errorWidget: (context, url, error) => Container(
          color: CustomColors.textGery1,
        ),
        placeholder: (context, url) => Container(
          color: Colors.transparent,
        ),
      ),
    );
  }
}
