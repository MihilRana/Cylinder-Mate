import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StocksRecord extends FirestoreRecord {
  StocksRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ct1" field.
  int? _ct1;
  int get ct1 => _ct1 ?? 0;
  bool hasCt1() => _ct1 != null;

  // "ct2" field.
  int? _ct2;
  int get ct2 => _ct2 ?? 0;
  bool hasCt2() => _ct2 != null;

  // "ct3" field.
  int? _ct3;
  int get ct3 => _ct3 ?? 0;
  bool hasCt3() => _ct3 != null;

  // "location_id" field.
  DocumentReference? _locationId;
  DocumentReference? get locationId => _locationId;
  bool hasLocationId() => _locationId != null;

  void _initializeFields() {
    _ct1 = castToType<int>(snapshotData['ct1']);
    _ct2 = castToType<int>(snapshotData['ct2']);
    _ct3 = castToType<int>(snapshotData['ct3']);
    _locationId = snapshotData['location_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('stocks');

  static Stream<StocksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StocksRecord.fromSnapshot(s));

  static Future<StocksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StocksRecord.fromSnapshot(s));

  static StocksRecord fromSnapshot(DocumentSnapshot snapshot) => StocksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StocksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StocksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StocksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StocksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStocksRecordData({
  int? ct1,
  int? ct2,
  int? ct3,
  DocumentReference? locationId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ct1': ct1,
      'ct2': ct2,
      'ct3': ct3,
      'location_id': locationId,
    }.withoutNulls,
  );

  return firestoreData;
}

class StocksRecordDocumentEquality implements Equality<StocksRecord> {
  const StocksRecordDocumentEquality();

  @override
  bool equals(StocksRecord? e1, StocksRecord? e2) {
    return e1?.ct1 == e2?.ct1 &&
        e1?.ct2 == e2?.ct2 &&
        e1?.ct3 == e2?.ct3 &&
        e1?.locationId == e2?.locationId;
  }

  @override
  int hash(StocksRecord? e) =>
      const ListEquality().hash([e?.ct1, e?.ct2, e?.ct3, e?.locationId]);

  @override
  bool isValidKey(Object? o) => o is StocksRecord;
}
