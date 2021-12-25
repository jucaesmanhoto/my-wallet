import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'moor_database.g.dart';

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return VmDatabase(file, logStatements: true);
  });
}

class Shares extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get codeName => text().withLength(min: 4, max: 4)();
  IntColumn get code => integer()();
  IntColumn get fairValueInCents => integer()();
  BoolColumn get isFractionary =>
      boolean().withDefault(const Constant(false))();
}

@UseMoor(tables: [Shares])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  Future<List<Share>> getAllShares() => select(shares).get();
  Stream<List<Share>> watchAllShares() => select(shares).watch();
  Future<int> insertShare({Insertable<Share> share}) =>
      into(shares).insert(share);
  Future<bool> updateShare({Share share}) => update(shares).replace(share);
  Future<int> deleteShare({Share share}) => delete(shares).delete(share);
}
