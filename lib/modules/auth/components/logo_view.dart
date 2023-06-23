import 'package:flutter/material.dart';
import 'package:petapp/constants/image_paths.dart';
import 'package:petapp/constants/sizes/image_sizes.dart';

class LogoView extends StatelessWidget {
  const LogoView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      height: ImageSizes.h100,
      width: ImageSizes.w100 ,
      image: AssetImage(ImagePaths.logoUrl),
      fit: BoxFit.contain,
    );
  }
}
