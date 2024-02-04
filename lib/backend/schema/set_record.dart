import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SetRecord extends FirestoreRecord {
  SetRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "data" field.
  String? _data;
  String get data => _data ?? '';
  bool hasData() => _data != null;

  // "IMU_Data" field.
  List<String>? _iMUData;
  List<String> get iMUData => _iMUData ?? const [];
  bool hasIMUData() => _iMUData != null;

  void _initializeFields() {
    _data = snapshotData['data'] as String?;
    _iMUData = getDataList(snapshotData['IMU_Data']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('set');

  static Stream<SetRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SetRecord.fromSnapshot(s));

  static Future<SetRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SetRecord.fromSnapshot(s));

  static SetRecord fromSnapshot(DocumentSnapshot snapshot) => SetRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SetRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SetRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SetRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SetRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSetRecordData({
  String? data,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'data': data,
    }.withoutNulls,
  );

  return firestoreData;
}

class SetRecordDocumentEquality implements Equality<SetRecord> {
  const SetRecordDocumentEquality();

  @override
  bool equals(SetRecord? e1, SetRecord? e2) {
    const listEquality = ListEquality();
    return e1?.data == e2?.data &&
        listEquality.equals(e1?.iMUData, e2?.iMUData);
  }

  @override
  int hash(SetRecord? e) => const ListEquality().hash([e?.data, e?.iMUData]);

  @override
  bool isValidKey(Object? o) => o is SetRecord;
}
