import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatelogImage extends StatelessWidget {
  const CatelogImage({
    super.key,
    required this.image,
  }) : assert(image != null);

  final String? image;

  @override
  Widget build(BuildContext context) {
    return Image.network(image!)
        .box
        .rounded
        .p8
        .color(context.canvasColor)
        .make()
        .p16()
        .w40(context);
  }
}
