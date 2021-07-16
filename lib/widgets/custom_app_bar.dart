import 'package:flutter/material.dart';
import 'package:netflix_ui/assets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;
  CustomAppBar({this.scrollOffset = 0.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 24.0,
      ),
      color: Colors.black.withOpacity(
        (scrollOffset / 350).clamp(0, 1).toDouble(),
      ),
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            const SizedBox(width: 12.0),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarButton(
                    title: 'TV Show',
                    onTap: () => print('TV Shows'),
                  ),
                  _AppBarButton(
                    title: 'Movies',
                    onTap: () => print('TV Shows'),
                  ),
                  _AppBarButton(
                    title: 'My List',
                    onTap: () => print('TV Shows'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  _AppBarButton({required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
