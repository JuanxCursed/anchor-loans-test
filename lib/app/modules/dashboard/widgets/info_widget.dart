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
    return Container(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(children: [
          Text(
            widget.title,
            style: Theme.of(context).textTheme.subtitle2,
            textAlign: TextAlign.start,
          ),
          widget.text != null
              ? Column(
                  children: [
                    Text(
                      widget.caption,
                      style: Theme.of(context).textTheme.caption,
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      widget.text,
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.start,
                    ),
                  ],
                )
              : Text(
                  widget.caption,
                  style: Theme.of(context).textTheme.caption,
                  textAlign: TextAlign.start,
                ),
        ]),
      ),
    );
  }
}
