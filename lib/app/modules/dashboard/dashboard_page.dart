import 'package:anchor_loans_test/app/modules/dashboard/widgets/info_widget.dart';
import 'package:anchor_loans_test/app/modules/dashboard/widgets/loan_widget.dart';
import 'package:anchor_loans_test/app/modules/dashboard/widgets/summary_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dashboard_controller.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({Key key, this.title = "Borrower Portal Dashboard"})
      : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState
    extends ModularState<DashboardPage, DashboardController> {
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
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: controller.loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Summary(
                    chartMap: controller.chartMap,
                    isLoading: controller.loading,
                  ),
                  SizedBox(height: 15),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Info(
                          title: '9',
                          caption: 'In Progress Loans',
                          text: '\$19,983,100.00',
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Info(
                          title: '103',
                          caption: 'Active Loans',
                          text: '\$198,983,100.00',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Info(
                    title: '\$19,983,100.00',
                    caption: 'Total Monthly Payments',
                  ),
                  SizedBox(height: 10),
                  _topActiveLoans()
                ],
              ),
      ),
    );
  }

  Widget _topActiveLoans() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                child: Text("Upcoming Maturity Date"),
                elevation: 0,
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              child: RaisedButton(
                onPressed: () {},
                child: Text("Last Draw >90 Days"),
                color: Colors.grey.shade200,
                elevation: 0,
              ),
            )
          ],
        ),
        Column(
          children: [
            Loan(),
            Loan(),
            Loan(),
            Loan(),
            Loan(),
          ],
        ),
      ],
    );
  }
}
