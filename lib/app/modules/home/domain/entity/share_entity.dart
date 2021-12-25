import 'package:equatable/equatable.dart';

class ShareEntity extends Equatable {
  final int id;
  final String codeName;
  final bool isFractionary;
  final int fairValueInCents;
  final int codeNumber;

  ShareEntity({
    this.id,
    this.codeName,
    this.isFractionary,
    this.fairValueInCents,
    this.codeNumber,
  });

  @override
  List<Object> get props => [
        id,
        codeName,
        isFractionary,
        fairValueInCents,
        codeNumber,
      ];
}
