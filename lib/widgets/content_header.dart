import 'package:flutter/material.dart';
import 'package:netflix_ui/models/models.dart';
import 'package:netflix_ui/widgets/widgets.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;
  ContentHeader({required this.featuredContent});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(featuredContent.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 500.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter),
          ),
        ),
        Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250.0,
            child: Image.asset(featuredContent.titleImageUrl ?? 'placeholder'),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(
                icon: Icons.add,
                title: 'List',
                onTap: () => print('My List'),
              ),
              _PlayButton(),
              VerticalIconButton(
                icon: Icons.info_outline,
                title: 'Info',
                onTap: () => print('Info'),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  const _PlayButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => print('Play'),
      style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.play_arrow,
            size: 30.0,
            color: Colors.black,
          ),
          SizedBox(width: 5),
          Text(
            'Play',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}
