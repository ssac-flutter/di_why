import 'package:injectable/injectable.dart';

@injectable
class CountRepository {
  int count = 0;

  void increment() {
    count++;
  }
}
