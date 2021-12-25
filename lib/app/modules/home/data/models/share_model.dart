import 'package:my_wallet/app/modules/home/domain/entity/share_entity.dart';

class ShareModel extends ShareEntity {
  final String codeName;
  final bool isFractionary;
  final int fairValueInCents;
  final int codeNumber;

  ShareModel({
    this.codeName,
    this.isFractionary,
    this.fairValueInCents,
    this.codeNumber,
  }) : super(
          codeName: codeName,
          codeNumber: codeNumber,
          fairValueInCents: fairValueInCents,
          isFractionary: isFractionary,
        );

  ShareModel copyWith({
    String codeName,
    bool isFractionary,
    int fairValueInCents,
    int codeNumber,
  }) {
    return ShareModel(
      codeName: codeName == null ? this.codeName : codeName,
      codeNumber: codeNumber == null ? this.codeNumber : codeNumber,
      isFractionary: isFractionary == null ? this.isFractionary : isFractionary,
      fairValueInCents:
          fairValueInCents == null ? this.fairValueInCents : fairValueInCents,
    );
  }
}
