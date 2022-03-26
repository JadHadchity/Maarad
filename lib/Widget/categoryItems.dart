import 'package:flutter/material.dart';

import '../Utils/constant.dart';

class Categoryitems extends StatelessWidget {
  final height, width, radius, titleSize;
  final image, title;
  final color;
  final align;
  const Categoryitems({
    Key? key,
    this.height,
    this.width,
    this.radius,
    this.titleSize,
    this.image,
    this.title,
    this.color,
    this.align,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kLess),
      child: Stack(
        children: [
          Container(
            height: 200.0,
            width: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(kLess),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(DarkColor, BlendMode.difference),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: title,
                    style: TextStyle(color: kWhiteColor, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
