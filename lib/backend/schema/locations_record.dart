import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocationsRecord extends FirestoreRecord {
  LocationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "coverImage" field.
  String? _coverImage;
  String get coverImage => _coverImage ?? '';
  bool hasCoverImage() => _coverImage != null;

  // "locationAddress" field.
  LatLng? _locationAddress;
  LatLng? get locationAddress => _locationAddress;
  bool hasLocationAddress() => _locationAddress != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "contactNum" field.
  String? _contactNum;
  String get contactNum => _contactNum ?? '';
  bool hasContactNum() => _contactNum != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _coverImage = snapshotData['coverImage'] as String?;
    _locationAddress = snapshotData['locationAddress'] as LatLng?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _contactNum = snapshotData['contactNum'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('locations');

  static Stream<LocationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocationsRecord.fromSnapshot(s));

  static Future<LocationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocationsRecord.fromSnapshot(s));

  static LocationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LocationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLocationsRecordData({
  String? name,
  String? description,
  String? coverImage,
  LatLng? locationAddress,
  DocumentReference? owner,
  String? contactNum,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'coverImage': coverImage,
      'locationAddress': locationAddress,
      'owner': owner,
      'contactNum': contactNum,
    }.withoutNulls,
  );

  return firestoreData;
}

class LocationsRecordDocumentEquality implements Equality<LocationsRecord> {
  const LocationsRecordDocumentEquality();

  @override
  bool equals(LocationsRecord? e1, LocationsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.coverImage == e2?.coverImage &&
        e1?.locationAddress == e2?.locationAddress &&
        e1?.owner == e2?.owner &&
        e1?.contactNum == e2?.contactNum;
  }

  @override
  int hash(LocationsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.coverImage,
        e?.locationAddress,
        e?.owner,
        e?.contactNum
      ]);

  @override
  bool isValidKey(Object? o) => o is LocationsRecord;
}
