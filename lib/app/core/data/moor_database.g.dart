// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Share extends DataClass implements Insertable<Share> {
  final int id;
  final String codeName;
  final int code;
  final int fairValueInCents;
  final bool isFractionary;
  Share(
      {@required this.id,
      @required this.codeName,
      @required this.code,
      @required this.fairValueInCents,
      @required this.isFractionary});
  factory Share.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Share(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      codeName: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}code_name']),
      code: intType.mapFromDatabaseResponse(data['${effectivePrefix}code']),
      fairValueInCents: intType.mapFromDatabaseResponse(
          data['${effectivePrefix}fair_value_in_cents']),
      isFractionary: boolType
          .mapFromDatabaseResponse(data['${effectivePrefix}is_fractionary']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<int>(id);
    }
    if (!nullToAbsent || codeName != null) {
      map['code_name'] = Variable<String>(codeName);
    }
    if (!nullToAbsent || code != null) {
      map['code'] = Variable<int>(code);
    }
    if (!nullToAbsent || fairValueInCents != null) {
      map['fair_value_in_cents'] = Variable<int>(fairValueInCents);
    }
    if (!nullToAbsent || isFractionary != null) {
      map['is_fractionary'] = Variable<bool>(isFractionary);
    }
    return map;
  }

  SharesCompanion toCompanion(bool nullToAbsent) {
    return SharesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      codeName: codeName == null && nullToAbsent
          ? const Value.absent()
          : Value(codeName),
      code: code == null && nullToAbsent ? const Value.absent() : Value(code),
      fairValueInCents: fairValueInCents == null && nullToAbsent
          ? const Value.absent()
          : Value(fairValueInCents),
      isFractionary: isFractionary == null && nullToAbsent
          ? const Value.absent()
          : Value(isFractionary),
    );
  }

  factory Share.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Share(
      id: serializer.fromJson<int>(json['id']),
      codeName: serializer.fromJson<String>(json['codeName']),
      code: serializer.fromJson<int>(json['code']),
      fairValueInCents: serializer.fromJson<int>(json['fairValueInCents']),
      isFractionary: serializer.fromJson<bool>(json['isFractionary']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'codeName': serializer.toJson<String>(codeName),
      'code': serializer.toJson<int>(code),
      'fairValueInCents': serializer.toJson<int>(fairValueInCents),
      'isFractionary': serializer.toJson<bool>(isFractionary),
    };
  }

  Share copyWith(
          {int id,
          String codeName,
          int code,
          int fairValueInCents,
          bool isFractionary}) =>
      Share(
        id: id ?? this.id,
        codeName: codeName ?? this.codeName,
        code: code ?? this.code,
        fairValueInCents: fairValueInCents ?? this.fairValueInCents,
        isFractionary: isFractionary ?? this.isFractionary,
      );
  @override
  String toString() {
    return (StringBuffer('Share(')
          ..write('id: $id, ')
          ..write('codeName: $codeName, ')
          ..write('code: $code, ')
          ..write('fairValueInCents: $fairValueInCents, ')
          ..write('isFractionary: $isFractionary')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          codeName.hashCode,
          $mrjc(code.hashCode,
              $mrjc(fairValueInCents.hashCode, isFractionary.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Share &&
          other.id == this.id &&
          other.codeName == this.codeName &&
          other.code == this.code &&
          other.fairValueInCents == this.fairValueInCents &&
          other.isFractionary == this.isFractionary);
}

class SharesCompanion extends UpdateCompanion<Share> {
  final Value<int> id;
  final Value<String> codeName;
  final Value<int> code;
  final Value<int> fairValueInCents;
  final Value<bool> isFractionary;
  const SharesCompanion({
    this.id = const Value.absent(),
    this.codeName = const Value.absent(),
    this.code = const Value.absent(),
    this.fairValueInCents = const Value.absent(),
    this.isFractionary = const Value.absent(),
  });
  SharesCompanion.insert({
    this.id = const Value.absent(),
    @required String codeName,
    @required int code,
    @required int fairValueInCents,
    this.isFractionary = const Value.absent(),
  })  : codeName = Value(codeName),
        code = Value(code),
        fairValueInCents = Value(fairValueInCents);
  static Insertable<Share> custom({
    Expression<int> id,
    Expression<String> codeName,
    Expression<int> code,
    Expression<int> fairValueInCents,
    Expression<bool> isFractionary,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (codeName != null) 'code_name': codeName,
      if (code != null) 'code': code,
      if (fairValueInCents != null) 'fair_value_in_cents': fairValueInCents,
      if (isFractionary != null) 'is_fractionary': isFractionary,
    });
  }

  SharesCompanion copyWith(
      {Value<int> id,
      Value<String> codeName,
      Value<int> code,
      Value<int> fairValueInCents,
      Value<bool> isFractionary}) {
    return SharesCompanion(
      id: id ?? this.id,
      codeName: codeName ?? this.codeName,
      code: code ?? this.code,
      fairValueInCents: fairValueInCents ?? this.fairValueInCents,
      isFractionary: isFractionary ?? this.isFractionary,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (codeName.present) {
      map['code_name'] = Variable<String>(codeName.value);
    }
    if (code.present) {
      map['code'] = Variable<int>(code.value);
    }
    if (fairValueInCents.present) {
      map['fair_value_in_cents'] = Variable<int>(fairValueInCents.value);
    }
    if (isFractionary.present) {
      map['is_fractionary'] = Variable<bool>(isFractionary.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SharesCompanion(')
          ..write('id: $id, ')
          ..write('codeName: $codeName, ')
          ..write('code: $code, ')
          ..write('fairValueInCents: $fairValueInCents, ')
          ..write('isFractionary: $isFractionary')
          ..write(')'))
        .toString();
  }
}

class $SharesTable extends Shares with TableInfo<$SharesTable, Share> {
  final GeneratedDatabase _db;
  final String _alias;
  $SharesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _codeNameMeta = const VerificationMeta('codeName');
  GeneratedTextColumn _codeName;
  @override
  GeneratedTextColumn get codeName => _codeName ??= _constructCodeName();
  GeneratedTextColumn _constructCodeName() {
    return GeneratedTextColumn('code_name', $tableName, false,
        minTextLength: 4, maxTextLength: 4);
  }

  final VerificationMeta _codeMeta = const VerificationMeta('code');
  GeneratedIntColumn _code;
  @override
  GeneratedIntColumn get code => _code ??= _constructCode();
  GeneratedIntColumn _constructCode() {
    return GeneratedIntColumn(
      'code',
      $tableName,
      false,
    );
  }

  final VerificationMeta _fairValueInCentsMeta =
      const VerificationMeta('fairValueInCents');
  GeneratedIntColumn _fairValueInCents;
  @override
  GeneratedIntColumn get fairValueInCents =>
      _fairValueInCents ??= _constructFairValueInCents();
  GeneratedIntColumn _constructFairValueInCents() {
    return GeneratedIntColumn(
      'fair_value_in_cents',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isFractionaryMeta =
      const VerificationMeta('isFractionary');
  GeneratedBoolColumn _isFractionary;
  @override
  GeneratedBoolColumn get isFractionary =>
      _isFractionary ??= _constructIsFractionary();
  GeneratedBoolColumn _constructIsFractionary() {
    return GeneratedBoolColumn('is_fractionary', $tableName, false,
        defaultValue: const Constant(false));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, codeName, code, fairValueInCents, isFractionary];
  @override
  $SharesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'shares';
  @override
  final String actualTableName = 'shares';
  @override
  VerificationContext validateIntegrity(Insertable<Share> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    }
    if (data.containsKey('code_name')) {
      context.handle(_codeNameMeta,
          codeName.isAcceptableOrUnknown(data['code_name'], _codeNameMeta));
    } else if (isInserting) {
      context.missing(_codeNameMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code'], _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('fair_value_in_cents')) {
      context.handle(
          _fairValueInCentsMeta,
          fairValueInCents.isAcceptableOrUnknown(
              data['fair_value_in_cents'], _fairValueInCentsMeta));
    } else if (isInserting) {
      context.missing(_fairValueInCentsMeta);
    }
    if (data.containsKey('is_fractionary')) {
      context.handle(
          _isFractionaryMeta,
          isFractionary.isAcceptableOrUnknown(
              data['is_fractionary'], _isFractionaryMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Share map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Share.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $SharesTable createAlias(String alias) {
    return $SharesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $SharesTable _shares;
  $SharesTable get shares => _shares ??= $SharesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [shares];
}
