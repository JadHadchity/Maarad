import 'package:flutter/material.dart';
import 'package:ecommerce/screens/CarParts.dart';
import 'parts.dart';
import 'package:ecommerce/screens/hondaParts.dart';

class Parts {
  String title;
  String description;
  String imageUrl;
  String imageUrll;
  int year;

  Parts(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.imageUrll,
      required this.year});
}

List<Parts> partList = [
  Parts(
      title: 'Honda',
      description: 'hellooo',
      year: 2000,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg',
      imageUrll:
          'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg'),
  Parts(
      title: 'falefel',
      description: 'hellooo',
      year: 2000,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg',
      imageUrll:
          'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg'),
  Parts(
      title: 'falefel',
      description: 'hellooo',
      year: 2000,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg',
      imageUrll:
          'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg'),
  Parts(
      title: 'falefel',
      description: 'hellooo',
      year: 2000,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg',
      imageUrll:
          'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg'),
  Parts(
      title: 'falefel',
      description: 'hellooo',
      year: 2000,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg',
      imageUrll:
          'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg'),
  Parts(
      title: 'falefel',
      description: 'hellooo',
      year: 2000,
      imageUrl:
          'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg',
      imageUrll:
          'https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832_960_720.jpg'),
];
