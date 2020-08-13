import 'package:anchor_loans_test/app/shared/models/loan_model.dart';
import 'package:anchor_loans_test/app/shared/repositories/loans/loan_repository_interface.dart';

class LoanRepositoryFirebase implements LoanRepositoryInterface {
  @override
  Future<Loan> getLoans() async {
    return Loan(id: 'xyzAhY39dha', userId: 'jd9j3jf9j30f', value: 100);
  }
}
