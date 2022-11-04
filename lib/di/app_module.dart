import 'package:injectable/injectable.dart';

@module
abstract class AppModule {

  @singleton
  bool get isShowAd => false;
}