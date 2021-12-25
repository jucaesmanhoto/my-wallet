import 'package:my_wallet/app/modules/home/domain/entity/share_entity.dart';
import 'package:my_wallet/app/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:my_wallet/app/modules/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeLocalDataSource localDataSource;

  HomeRepositoryImpl({this.localDataSource});
  @override
  Either<Failure, Stream<List<ShareEntity>>> watchAllShares() {}
}
