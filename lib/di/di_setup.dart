import 'package:di_why/di/di_setup.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

// final getIt = GetIt.instance;
//
// void setup() {
//   getIt.registerFactory(() => CountRepository());
//   getIt.registerSingleton(NextViewModel(getIt<CountRepository>()));
// }

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(getIt);