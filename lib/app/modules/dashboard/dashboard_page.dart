import 'package:anchor_loans_test/app/modules/dashboard/widgets/info_widget.dart';
import 'package:anchor_loans_test/app/modules/dashboard/widgets/summary_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dashboard_controller.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({Key key, this.title = "Dashboard"}) : super(key: key);

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
        title: Text(widget.title),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Info(
                        title: '9',
                        caption: 'In Progress Loans',
                        text: '\$19,983,100.00',
                      ),
                      Info(
                        title: '103',
                        caption: 'Active Loans',
                        text: '\$198,983,100.00',
                      ),
                    ],
                  ),
                  Info(
                    title: '\$19,983,100.00',
                    caption: 'Total Monthly Payments',
                  ),
                ],
              ),
      ),
    );
  }
}
