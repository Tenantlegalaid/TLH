import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class ReportRecord extends FirestoreRecord {
  ReportRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "Fullname" field.
  String? _fullname;
  String get fullname => _fullname ?? '';
  bool hasFullname() => _fullname != null;

  // "EmailAddress" field.
  String? _emailAddress;
  String get emailAddress => _emailAddress ?? '';
  bool hasEmailAddress() => _emailAddress != null;

  // "Phonenumber" field.
  int? _phonenumber;
  int get phonenumber => _phonenumber ?? 0;
  bool hasPhonenumber() => _phonenumber != null;

  // "Dateofbirth" field.
  double? _dateofbirth;
  double get dateofbirth => _dateofbirth ?? 0.0;
  bool hasDateofbirth() => _dateofbirth != null;

  // "ResidentialAddress" field.
  double? _residentialAddress;
  double get residentialAddress => _residentialAddress ?? 0.0;
  bool hasResidentialAddress() => _residentialAddress != null;

  // "The_address_of_the_property_being_repossessed" field.
  double? _theAddressOfThePropertyBeingRepossessed;
  double get theAddressOfThePropertyBeingRepossessed =>
      _theAddressOfThePropertyBeingRepossessed ?? 0.0;
  bool hasTheAddressOfThePropertyBeingRepossessed() =>
      _theAddressOfThePropertyBeingRepossessed != null;

  // "How_long_you_have_lived_in_the_property" field.
  double? _howLongYouHaveLivedInTheProperty;
  double get howLongYouHaveLivedInTheProperty =>
      _howLongYouHaveLivedInTheProperty ?? 0.0;
  bool hasHowLongYouHaveLivedInTheProperty() =>
      _howLongYouHaveLivedInTheProperty != null;

  // "Anydisrepair" field.
  double? _anydisrepair;
  double get anydisrepair => _anydisrepair ?? 0.0;
  bool hasAnydisrepair() => _anydisrepair != null;

  // "employmentdetail" field.
  double? _employmentdetail;
  double get employmentdetail => _employmentdetail ?? 0.0;
  bool hasEmploymentdetail() => _employmentdetail != null;

  // "incomebenefits" field.
  double? _incomebenefits;
  double get incomebenefits => _incomebenefits ?? 0.0;
  bool hasIncomebenefits() => _incomebenefits != null;

  // "householdmembers" field.
  String? _householdmembers;
  String get householdmembers => _householdmembers ?? '';
  bool hasHouseholdmembers() => _householdmembers != null;

  // "relationshiptotenant" field.
  String? _relationshiptotenant;
  String get relationshiptotenant => _relationshiptotenant ?? '';
  bool hasRelationshiptotenant() => _relationshiptotenant != null;

  // "healthproblem" field.
  String? _healthproblem;
  String get healthproblem => _healthproblem ?? '';
  bool hasHealthproblem() => _healthproblem != null;

  // "doctorevidence" field.
  String? _doctorevidence;
  String get doctorevidence => _doctorevidence ?? '';
  bool hasDoctorevidence() => _doctorevidence != null;

  // "amountofrentowned" field.
  double? _amountofrentowned;
  double get amountofrentowned => _amountofrentowned ?? 0.0;
  bool hasAmountofrentowned() => _amountofrentowned != null;

  // "commwithlandlord" field.
  double? _commwithlandlord;
  double get commwithlandlord => _commwithlandlord ?? 0.0;
  bool hasCommwithlandlord() => _commwithlandlord != null;

  // "reasonofowingrent" field.
  double? _reasonofowingrent;
  double get reasonofowingrent => _reasonofowingrent ?? 0.0;
  bool hasReasonofowingrent() => _reasonofowingrent != null;

  // "detailsofcourtdate" field.
  double? _detailsofcourtdate;
  double get detailsofcourtdate => _detailsofcourtdate ?? 0.0;
  bool hasDetailsofcourtdate() => _detailsofcourtdate != null;

  void _initializeFields() {
    _fullname = snapshotData['Fullname'] as String?;
    _emailAddress = snapshotData['EmailAddress'] as String?;
    _phonenumber = castToType<int>(snapshotData['Phonenumber']);
    _dateofbirth = castToType<double>(snapshotData['Dateofbirth']);
    _residentialAddress =
        castToType<double>(snapshotData['ResidentialAddress']);
    _theAddressOfThePropertyBeingRepossessed = castToType<double>(
        snapshotData['The_address_of_the_property_being_repossessed']);
    _howLongYouHaveLivedInTheProperty = castToType<double>(
        snapshotData['How_long_you_have_lived_in_the_property']);
    _anydisrepair = castToType<double>(snapshotData['Anydisrepair']);
    _employmentdetail = castToType<double>(snapshotData['employmentdetail']);
    _incomebenefits = castToType<double>(snapshotData['incomebenefits']);
    _householdmembers = snapshotData['householdmembers'] as String?;
    _relationshiptotenant = snapshotData['relationshiptotenant'] as String?;
    _healthproblem = snapshotData['healthproblem'] as String?;
    _doctorevidence = snapshotData['doctorevidence'] as String?;
    _amountofrentowned = castToType<double>(snapshotData['amountofrentowned']);
    _commwithlandlord = castToType<double>(snapshotData['commwithlandlord']);
    _reasonofowingrent = castToType<double>(snapshotData['reasonofowingrent']);
    _detailsofcourtdate =
        castToType<double>(snapshotData['detailsofcourtdate']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('report');

  static Stream<ReportRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReportRecord.fromSnapshot(s));

  static Future<ReportRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReportRecord.fromSnapshot(s));

  static ReportRecord fromSnapshot(DocumentSnapshot snapshot) => ReportRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReportRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReportRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReportRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReportRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReportRecordData({
  String? fullname,
  String? emailAddress,
  int? phonenumber,
  double? dateofbirth,
  double? residentialAddress,
  double? theAddressOfThePropertyBeingRepossessed,
  double? howLongYouHaveLivedInTheProperty,
  double? anydisrepair,
  double? employmentdetail,
  double? incomebenefits,
  String? householdmembers,
  String? relationshiptotenant,
  String? healthproblem,
  String? doctorevidence,
  double? amountofrentowned,
  double? commwithlandlord,
  double? reasonofowingrent,
  double? detailsofcourtdate,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Fullname': fullname,
      'EmailAddress': emailAddress,
      'Phonenumber': phonenumber,
      'Dateofbirth': dateofbirth,
      'ResidentialAddress': residentialAddress,
      'The_address_of_the_property_being_repossessed':
          theAddressOfThePropertyBeingRepossessed,
      'How_long_you_have_lived_in_the_property':
          howLongYouHaveLivedInTheProperty,
      'Anydisrepair': anydisrepair,
      'employmentdetail': employmentdetail,
      'incomebenefits': incomebenefits,
      'householdmembers': householdmembers,
      'relationshiptotenant': relationshiptotenant,
      'healthproblem': healthproblem,
      'doctorevidence': doctorevidence,
      'amountofrentowned': amountofrentowned,
      'commwithlandlord': commwithlandlord,
      'reasonofowingrent': reasonofowingrent,
      'detailsofcourtdate': detailsofcourtdate,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReportRecordDocumentEquality implements Equality<ReportRecord> {
  const ReportRecordDocumentEquality();

  @override
  bool equals(ReportRecord? e1, ReportRecord? e2) {
    return e1?.fullname == e2?.fullname &&
        e1?.emailAddress == e2?.emailAddress &&
        e1?.phonenumber == e2?.phonenumber &&
        e1?.dateofbirth == e2?.dateofbirth &&
        e1?.residentialAddress == e2?.residentialAddress &&
        e1?.theAddressOfThePropertyBeingRepossessed ==
            e2?.theAddressOfThePropertyBeingRepossessed &&
        e1?.howLongYouHaveLivedInTheProperty ==
            e2?.howLongYouHaveLivedInTheProperty &&
        e1?.anydisrepair == e2?.anydisrepair &&
        e1?.employmentdetail == e2?.employmentdetail &&
        e1?.incomebenefits == e2?.incomebenefits &&
        e1?.householdmembers == e2?.householdmembers &&
        e1?.relationshiptotenant == e2?.relationshiptotenant &&
        e1?.healthproblem == e2?.healthproblem &&
        e1?.doctorevidence == e2?.doctorevidence &&
        e1?.amountofrentowned == e2?.amountofrentowned &&
        e1?.commwithlandlord == e2?.commwithlandlord &&
        e1?.reasonofowingrent == e2?.reasonofowingrent &&
        e1?.detailsofcourtdate == e2?.detailsofcourtdate;
  }

  @override
  int hash(ReportRecord? e) => const ListEquality().hash([
        e?.fullname,
        e?.emailAddress,
        e?.phonenumber,
        e?.dateofbirth,
        e?.residentialAddress,
        e?.theAddressOfThePropertyBeingRepossessed,
        e?.howLongYouHaveLivedInTheProperty,
        e?.anydisrepair,
        e?.employmentdetail,
        e?.incomebenefits,
        e?.householdmembers,
        e?.relationshiptotenant,
        e?.healthproblem,
        e?.doctorevidence,
        e?.amountofrentowned,
        e?.commwithlandlord,
        e?.reasonofowingrent,
        e?.detailsofcourtdate
      ]);

  @override
  bool isValidKey(Object? o) => o is ReportRecord;
}
