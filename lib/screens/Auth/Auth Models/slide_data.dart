import 'package:flutter/material.dart';

class Slide {
  final String imageUrl;
  final String title;

  Slide({
    @required this.imageUrl,
    @required this.title,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/roasted-chicken-clipart-2.jpg',
    title: "Browse the largest variety of fish and meat and more.",
  ),
  Slide(
    imageUrl:  "assets/images/animated-fried-chicken-clipart-5.jpg",
    title: "Track your delivery in real time.",
  ),
  Slide(
    imageUrl:  "assets/images/FreeDelivery.png",
    title:  "Now get order at your door step",
  ),
];
