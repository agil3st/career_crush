import 'package:career_crush/gen/assets.gen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardSlide {
  String title;
  String description;
  SvgPicture image;

  OnBoardSlide({
    required this.title,
    required this.description,
    required this.image,
  });

  factory OnBoardSlide.fromJson(Map<String, dynamic> json) => OnBoardSlide(
        title: json["title"],
        description: json["description"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
        "image": image,
      };

  static List<OnBoardSlide> slides = [
    OnBoardSlide(
      title: 'Nibh euismod tincidunt ut',
      description: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, '
          'sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
      image: Assets.images.illustrations.onBoarding1.svg(height: 220),
    ),
    OnBoardSlide(
      title: 'We bring the best for you',
      description: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, '
          'sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
      image: Assets.images.illustrations.onBoarding2.svg(height: 220),
    ),
    OnBoardSlide(
      title: 'We bring the best for you',
      description: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, '
          'sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
      image: Assets.images.illustrations.onBoarding3.svg(height: 220),
    ),
    OnBoardSlide(
      title: 'We bring the best for you',
      description: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, '
          'sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.',
      image: Assets.images.illustrations.onBoarding4.svg(height: 220),
    ),
  ];
}
