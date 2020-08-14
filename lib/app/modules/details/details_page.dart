import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'details_controller.dart';

class DetailsPage extends StatefulWidget {
  final String title;
  const DetailsPage({Key key, this.title = "Details"}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends ModularState<DetailsPage, DetailsController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: Theme.of(context).textTheme.subtitle1,
          textAlign: TextAlign.center,
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: controller.loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _loanHeader(context),
                  _loanDetails(context),
                  _loanDocuments(context)
                ],
              ),
      ),
    );
  }
}

Widget _loanHeader(context) {
  return Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(color: Color(0xFFF1F9FF)),
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Loan: [Number]',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade600,
                ),
              ),
              Text(
                'Category [Active/Inative]',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text("My Documents"),
          elevation: 0,
        ),
      ],
    ),
  );
}

Widget _loanDetailItem(context, String title, String text) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        text,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    ],
  );
}

Widget _loanDetailsLine(context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      _loanDetailItem(context, 'Loan Amount', '\$ 1,000,000.00'),
      _loanDetailItem(context, 'Loan Amount', '\$ 1,000,000.00'),
      _loanDetailItem(context, 'Loan Amount', '\$ 1,000,000.00'),
    ],
  );
}

Widget _loanDetails(context) {
  return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          _loanDetailsLine(context),
          SizedBox(height: 15),
          _loanDetailsLine(context),
          SizedBox(height: 15),
          _loanDetailsLine(context),
          SizedBox(height: 15),
          _loanDetailsLine(context),
        ],
      ));
}

Widget _loanDocuments(context) {
  return Container(
    padding: EdgeInsets.all(20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          children: [
            Expanded(
              child: Text('Standard Documents'),
            ),
            Expanded(
              child: new TextFormField(
                maxLines: 1,
                keyboardType: TextInputType.text,
                autofocus: false,
                decoration: new InputDecoration(
                  hintText: 'Filter',
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                  border: new OutlineInputBorder(
                    borderSide:
                        new BorderSide(color: Colors.grey.shade300, width: 1),
                  ),
                ),
              ),
            )
          ],
        ),
        SizedBox(height: 15),
        SizedBox(
          height: 250,
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) =>
                _documentCard(context, index),
          ),
        ),
      ],
    ),
  );
}

Widget _documentCard(BuildContext context, int index) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(20),
    margin: EdgeInsets.only(top: 10),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade400),
      borderRadius: BorderRadius.circular(5),
    ),
    child: Row(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.green,
            shape: BoxShape.circle,
          ),
          child: Text(
            '1',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ),
        SizedBox(width: 10),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Estimate of Repairs $index',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              Text(
                'Submitted: 01/01/2020',
                style: Theme.of(context).textTheme.bodyText1,
              ),
              Text(
                'Expiration: 12/01/2020',
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ],
          ),
        ),
        RaisedButton(
          onPressed: () {},
          child: Text("Upload"),
          elevation: 0,
        ),
      ],
    ),
  );
}
