import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  final String title;
  final String mediaUrl;

  PostItem({@required this.title, @required this.mediaUrl});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(mediaUrl),
        Container(
          child: Text(title),
        ),
      ],
    );
  }
}