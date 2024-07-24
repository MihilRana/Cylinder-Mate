import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdersRecord extends FirestoreRecord {
  OrdersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  DocumentReference? _uid;
  DocumentReference? get uid => _uid;
  bool hasUid() => _uid != null;

  // "order_date" field.
  DateTime? _orderDate;
  DateTime? get orderDate => _orderDate;
  bool hasOrderDate() => _orderDate != null;

  // "reservation_or_delivery" field.
  bool? _reservationOrDelivery;
  bool get reservationOrDelivery => _reservationOrDelivery ?? false;
  bool hasReservationOrDelivery() => _reservationOrDelivery != null;

  // "reserv_expire_date" field.
  DateTime? _reservExpireDate;
  DateTime? get reservExpireDate => _reservExpireDate;
  bool hasReservExpireDate() => _reservExpireDate != null;

  // "ct1_count" field.
  int? _ct1Count;
  int get ct1Count => _ct1Count ?? 0;
  bool hasCt1Count() => _ct1Count != null;

  // "ct2_count" field.
  int? _ct2Count;
  int get ct2Count => _ct2Count ?? 0;
  bool hasCt2Count() => _ct2Count != null;

  // "ct3_count" field.
  int? _ct3Count;
  int get ct3Count => _ct3Count ?? 0;
  bool hasCt3Count() => _ct3Count != null;

  // "order_total_price" field.
  double? _orderTotalPrice;
  double get orderTotalPrice => _orderTotalPrice ?? 0.0;
  bool hasOrderTotalPrice() => _orderTotalPrice != null;

  // "location_id" field.
  DocumentReference? _locationId;
  DocumentReference? get locationId => _locationId;
  bool hasLocationId() => _locationId != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as DocumentReference?;
    _orderDate = snapshotData['order_date'] as DateTime?;
    _reservationOrDelivery = snapshotData['reservation_or_delivery'] as bool?;
    _reservExpireDate = snapshotData['reserv_expire_date'] as DateTime?;
    _ct1Count = castToType<int>(snapshotData['ct1_count']);
    _ct2Count = castToType<int>(snapshotData['ct2_count']);
    _ct3Count = castToType<int>(snapshotData['ct3_count']);
    _orderTotalPrice = castToType<double>(snapshotData['order_total_price']);
    _locationId = snapshotData['location_id'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('orders');

  static Stream<OrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersRecord.fromSnapshot(s));

  static Future<OrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersRecord.fromSnapshot(s));

  static OrdersRecord fromSnapshot(DocumentSnapshot snapshot) => OrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersRecordData({
  DocumentReference? uid,
  DateTime? orderDate,
  bool? reservationOrDelivery,
  DateTime? reservExpireDate,
  int? ct1Count,
  int? ct2Count,
  int? ct3Count,
  double? orderTotalPrice,
  DocumentReference? locationId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'order_date': orderDate,
      'reservation_or_delivery': reservationOrDelivery,
      'reserv_expire_date': reservExpireDate,
      'ct1_count': ct1Count,
      'ct2_count': ct2Count,
      'ct3_count': ct3Count,
      'order_total_price': orderTotalPrice,
      'location_id': locationId,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersRecordDocumentEquality implements Equality<OrdersRecord> {
  const OrdersRecordDocumentEquality();

  @override
  bool equals(OrdersRecord? e1, OrdersRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.orderDate == e2?.orderDate &&
        e1?.reservationOrDelivery == e2?.reservationOrDelivery &&
        e1?.reservExpireDate == e2?.reservExpireDate &&
        e1?.ct1Count == e2?.ct1Count &&
        e1?.ct2Count == e2?.ct2Count &&
        e1?.ct3Count == e2?.ct3Count &&
        e1?.orderTotalPrice == e2?.orderTotalPrice &&
        e1?.locationId == e2?.locationId;
  }

  @override
  int hash(OrdersRecord? e) => const ListEquality().hash([
        e?.uid,
        e?.orderDate,
        e?.reservationOrDelivery,
        e?.reservExpireDate,
        e?.ct1Count,
        e?.ct2Count,
        e?.ct3Count,
        e?.orderTotalPrice,
        e?.locationId
      ]);

  @override
  bool isValidKey(Object? o) => o is OrdersRecord;
}
