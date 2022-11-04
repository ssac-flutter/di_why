import 'package:di_why/data/count_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class MainViewModel extends ChangeNotifier {
  final CountRepository _countRepository;
  final bool isShowAd;

  MainViewModel(this._countRepository, this.isShowAd);

  int get count => _countRepository.count;

  void increment() {
    _countRepository.increment();
    notifyListeners();
  }
}