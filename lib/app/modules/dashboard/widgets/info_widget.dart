import 'package:flutter/material.dart';

class Info extends StatefulWidget {
  Info({
    Key key,
    @required this.title,
    @required this.caption,
    this.text,
  }) : super(key: key);

  final String title;
  final String caption;
  final String text;

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(children: [
          Text(widget.title),
          widget.text != null
              ? Column(
                  children: [
                    Text(widget.caption),
                    Text(widget.text),
                  ],
                )
              : Text(widget.caption),
        ]),
      ),
    );
  }
}
