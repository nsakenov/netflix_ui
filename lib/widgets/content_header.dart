import 'package:flutter/material.dart';
import 'package:netflix_ui/models/models.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;
  ContentHeader({required this.featuredContent});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(featuredContent.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
