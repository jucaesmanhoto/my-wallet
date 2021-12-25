import 'package:my_wallet/app/core/data/moor_database.dart';
import 'package:my_wallet/app/modules/home/data/models/share_model.dart';

abstract class HomeLocalDataSource {
  Stream<List<ShareModel>> watchAllShares()
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  final AppDatabase appDatabase;
  const HomeLocalDataSourceImpl({this.appDatabase})
  Stream<List<ShareModel>> watchAllShares(){
    final response = appDatabase.watchAllShares();
    
  }
}