import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvoicesRecord extends FirestoreRecord {
  InvoicesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "invoice_id" field.
  String? _invoiceId;
  String get invoiceId => _invoiceId ?? '';
  bool hasInvoiceId() => _invoiceId != null;

  // "invoice_date" field.
  DateTime? _invoiceDate;
  DateTime? get invoiceDate => _invoiceDate;
  bool hasInvoiceDate() => _invoiceDate != null;

  // "invoice_amt" field.
  int? _invoiceAmt;
  int get invoiceAmt => _invoiceAmt ?? 0;
  bool hasInvoiceAmt() => _invoiceAmt != null;

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "order_id" field.
  DocumentReference? _orderId;
  DocumentReference? get orderId => _orderId;
  bool hasOrderId() => _orderId != null;

  void _initializeFields() {
    _invoiceId = snapshotData['invoice_id'] as String?;
    _invoiceDate = snapshotData['invoice_date'] as DateTime?;
    _invoiceAmt = castToType<int>(snapshotData['invoice_amt']);
    _uid = snapshotData['uid'] as DocumentReference?;
    _orderId = snapshotData['order_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('invoices');

  static Stream<InvoicesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvoicesRecord.fromSnapshot(s));

  static Future<InvoicesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvoicesRecord.fromSnapshot(s));

  static InvoicesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvoicesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvoicesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvoicesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvoicesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvoicesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvoicesRecordData({
  String? invoiceId,
  DateTime? invoiceDate,
  int? invoiceAmt,
  DocumentReference? uid,
  DocumentReference? orderId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'invoice_id': invoiceId,
      'invoice_date': invoiceDate,
      'invoice_amt': invoiceAmt,
      'uid': uid,
      'order_id': orderId,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvoicesRecordDocumentEquality implements Equality<InvoicesRecord> {
  const InvoicesRecordDocumentEquality();

  @override
  bool equals(InvoicesRecord? e1, InvoicesRecord? e2) {
    return e1?.invoiceId == e2?.invoiceId &&
        e1?.invoiceDate == e2?.invoiceDate &&
        e1?.invoiceAmt == e2?.invoiceAmt &&
        e1?.uid == e2?.uid &&
        e1?.orderId == e2?.orderId;
  }

  @override
  int hash(InvoicesRecord? e) => const ListEquality()
      .hash([e?.invoiceId, e?.invoiceDate, e?.invoiceAmt, e?.uid, e?.orderId]);

  @override
  bool isValidKey(Object? o) => o is InvoicesRecord;
}
