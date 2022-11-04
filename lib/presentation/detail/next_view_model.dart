import 'package:di_why/data/count_repository.dart';
import 'package:di_why/data/name_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class NextViewModel extends ChangeNotifier {
  final CountRepository _countRepository;
  final NameRepository _nameRepository;
  final bool isShowAd;

  NextViewModel(
    this._countRepository,
    this._nameRepository,
    this.isShowAd,
  );

  int get count => _countRepository.count;

  String get name => _nameRepository.name;

  void increment() {
    _countRepository.increment();
    _countRepository.increment();
    notifyListeners();
  }
}
