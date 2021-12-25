import 'package:mobx/mobx.dart';
import '../../data/models/share_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  Stream<List<ShareModel>> shares;

  @observable
  ShareModel newShare;

  @action
  void getShares() {}

  @action
  void deleteShare({ShareModel share}) {}

  @action
  void setFractionary({bool value}) {}

  @action
  void changeCodeName({String value}) {
    newShare = newShare.copyWith(codeName: value);
  }

  @action
  Future<void> addNewShare({ShareModel share}) async {}
}
