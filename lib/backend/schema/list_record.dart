import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListRecord extends FirestoreRecord {
  ListRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('list');

  static Stream<ListRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListRecord.fromSnapshot(s));

  static Future<ListRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListRecord.fromSnapshot(s));

  static ListRecord fromSnapshot(DocumentSnapshot snapshot) => ListRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class ListRecordDocumentEquality implements Equality<ListRecord> {
  const ListRecordDocumentEquality();

  @override
  bool equals(ListRecord? e1, ListRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(ListRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is ListRecord;
}
