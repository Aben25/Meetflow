import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NamesRecord extends FirestoreRecord {
  NamesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Names');

  static Stream<NamesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NamesRecord.fromSnapshot(s));

  static Future<NamesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NamesRecord.fromSnapshot(s));

  static NamesRecord fromSnapshot(DocumentSnapshot snapshot) => NamesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NamesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NamesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NamesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NamesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNamesRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class NamesRecordDocumentEquality implements Equality<NamesRecord> {
  const NamesRecordDocumentEquality();

  @override
  bool equals(NamesRecord? e1, NamesRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(NamesRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is NamesRecord;
}
