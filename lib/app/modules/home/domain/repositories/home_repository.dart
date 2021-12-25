import 'package:dartz/dartz.dart';
import '../../../../core/error/failure.dart';
import '../entity/share_entity.dart';

abstract class HomeRepository {
  Either<Failure, Stream<List<ShareEntity>>> watchAllShares();
}
