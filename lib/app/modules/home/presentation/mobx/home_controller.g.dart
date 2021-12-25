// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$sharesAtom = Atom(name: '_HomeControllerBase.shares');

  @override
  Stream<List<ShareModel>> get shares {
    _$sharesAtom.reportRead();
    return super.shares;
  }

  @override
  set shares(Stream<List<ShareModel>> value) {
    _$sharesAtom.reportWrite(value, super.shares, () {
      super.shares = value;
    });
  }

  final _$newShareAtom = Atom(name: '_HomeControllerBase.newShare');

  @override
  ShareModel get newShare {
    _$newShareAtom.reportRead();
    return super.newShare;
  }

  @override
  set newShare(ShareModel value) {
    _$newShareAtom.reportWrite(value, super.newShare, () {
      super.newShare = value;
    });
  }

  final _$addShareAsyncAction = AsyncAction('_HomeControllerBase.addShare');

  @override
  Future<void> addNewShare({ShareModel share}) {
    return _$addShareAsyncAction.run(() => super.addNewShare(share: share));
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void getShares() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.getShares');
    try {
      return super.getShares();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteShare({ShareModel share}) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.deleteShare');
    try {
      return super.deleteShare(share: share);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setFractionary({bool value}) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setFractionary');
    try {
      return super.setFractionary(value: value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeCodeName({String value}) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changeCodeName');
    try {
      return super.changeCodeName(value: value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
shares: ${shares},
newShare: ${newShare}
    ''';
  }
}
