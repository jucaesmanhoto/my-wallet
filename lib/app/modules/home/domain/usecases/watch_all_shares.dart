import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../entity/share_entity.dart';
import '../repositories/home_repository.dart';

class WatchAllShares
    extends UseCase<Stream<List<ShareEntity>>, WatchAllSharesNoParams> {
  final HomeRepository repository;

  WatchAllShares({this.repository});

  @override
  Future<Either<Failure, Stream<List<ShareEntity>>>> call(
      {WatchAllSharesNoParams params}) async {
    return Right(await repository.watchAllShares());
  }
}

class WatchAllSharesNoParams {}
