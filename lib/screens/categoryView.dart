import 'package:flutter/material.dart';

import '../Utils/constant.dart';

class Categoryview extends StatelessWidget {
  final column, items;
  final child;
  final color;
  final ratio, height, width;
  final direction, itemBuilder;
  const Categoryview({
    Key? key,
    this.column,
    this.items,
    this.child,
    this.color,
    this.ratio,
    this.height,
    this.width,
    this.direction,
    this.itemBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
      child: GridView.builder(
          padding: EdgeInsets.all(kLess),
          scrollDirection: direction,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: ratio,
            mainAxisSpacing: 0.0,
            crossAxisSpacing: 0.0,
          ),
          itemCount: items,
          itemBuilder: itemBuilder),
    );
  }
}
