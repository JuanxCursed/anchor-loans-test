import 'package:anchor_loans_test/app/shared/models/loan_model.dart';

abstract class LoanRepositoryInterface {
  List<Loan> getLoans();
}
