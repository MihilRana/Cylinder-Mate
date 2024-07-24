import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PricesRecord extends FirestoreRecord {
  PricesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ct1" field.
  double? _ct1;
  double get ct1 => _ct1 ?? 0.0;
  bool hasCt1() => _ct1 != null;

  // "ct2" field.
  double? _ct2;
  double get ct2 => _ct2 ?? 0.0;
  bool hasCt2() => _ct2 != null;

  // "ct3" field.
  double? _ct3;
  double get ct3 => _ct3 ?? 0.0;
  bool hasCt3() => _ct3 != null;

  void _initializeFields() {
    _ct1 = castToType<double>(snapshotData['ct1']);
    _ct2 = castToType<double>(snapshotData['ct2']);
    _ct3 = castToType<double>(snapshotData['ct3']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prices');

  static Stream<PricesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PricesRecord.fromSnapshot(s));

  static Future<PricesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PricesRecord.fromSnapshot(s));

  static PricesRecord fromSnapshot(DocumentSnapshot snapshot) => PricesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PricesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PricesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PricesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PricesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPricesRecordData({
  double? ct1,
  double? ct2,
  double? ct3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ct1': ct1,
      'ct2': ct2,
      'ct3': ct3,
    }.withoutNulls,
  );

  return firestoreData;
}

class PricesRecordDocumentEquality implements Equality<PricesRecord> {
  const PricesRecordDocumentEquality();

  @override
  bool equals(PricesRecord? e1, PricesRecord? e2) {
    return e1?.ct1 == e2?.ct1 && e1?.ct2 == e2?.ct2 && e1?.ct3 == e2?.ct3;
  }

  @override
  int hash(PricesRecord? e) =>
      const ListEquality().hash([e?.ct1, e?.ct2, e?.ct3]);

  @override
  bool isValidKey(Object? o) => o is PricesRecord;
}
