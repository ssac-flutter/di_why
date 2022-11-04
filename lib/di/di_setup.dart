import 'package:di_why/data/count_repository.dart';
import 'package:di_why/presentation/detail/next_view_model.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerFactory(() => CountRepository());
  getIt.registerSingleton(NextViewModel(getIt<CountRepository>()));
}