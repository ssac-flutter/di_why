import 'package:di_why/data/count_repository.dart';
import 'package:flutter/material.dart';

class MainViewModel extends ChangeNotifier {
  final CountRepository _countRepository;

  MainViewModel(this._countRepository);

  int get count => _countRepository.count;

  void increment() {
    _countRepository.increment();
    notifyListeners();
  }
}