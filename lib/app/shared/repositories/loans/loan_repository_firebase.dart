import 'package:anchor_loans_test/app/shared/models/loan_model.dart';
import 'package:anchor_loans_test/app/shared/repositories/loans/loan_repository_interface.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class LoanRepositoryFirebase implements LoanRepositoryInterface {
  @override
  List<Loan> getLoans() {
    List<Loan> loans = List();
    loans.add(Loan(
        id: 'xyzAhY39dha',
        userId: 'jd9j3jf9j30f',
        value: 100,
        startDate: Timestamp.fromDate(DateTime.now()),
        endDate: Timestamp.fromDate(DateTime.now()),
        status: "Active"));
    return loans;
  }
}
