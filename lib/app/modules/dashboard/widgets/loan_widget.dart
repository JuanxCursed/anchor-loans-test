import 'package:flutter/material.dart';

class Loan extends StatefulWidget {
  @override
  _LoanState createState() => _LoanState();
}

class _LoanState extends State<Loan> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.only(top: 10),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '4102 Agnes Ave',
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Text(
                    '03/28/2020',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
            IconButton(
              icon: Icon(Icons.chevron_right),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
