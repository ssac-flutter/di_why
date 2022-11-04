import 'package:di_why/data/count_repository.dart';
import 'package:flutter/material.dart';

class NextViewModel extends ChangeNotifier {
  final CountRepository _countRepository;

  NextViewModel(this._countRepository);

  int get count => _countRepository.count;

  void increment() {
    _countRepository.increment();
    _countRepository.increment();
    notifyListeners();
  }
}