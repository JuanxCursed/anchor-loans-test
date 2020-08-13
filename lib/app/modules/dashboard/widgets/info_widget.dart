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
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(children: [
          Expanded(
            flex: 1,
            child: Text(
              widget.title,
              style: Theme.of(context).textTheme.subtitle2,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: widget.text != null ? 2 : 1,
            child: widget.text != null
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.caption,
                        style: Theme.of(context).textTheme.caption,
                      ),
                      Text(
                        widget.text,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  )
                : Text(
                    widget.caption,
                    style: Theme.of(context).textTheme.caption,
                    textAlign: TextAlign.center,
                  ),
          )
        ]),
      ),
    );
  }
}
