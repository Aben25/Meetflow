import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AttendeesRecord extends FirestoreRecord {
  AttendeesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _email = snapshotData['email'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('attendees')
          : FirebaseFirestore.instance.collectionGroup('attendees');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('attendees').doc();

  static Stream<AttendeesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AttendeesRecord.fromSnapshot(s));

  static Future<AttendeesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AttendeesRecord.fromSnapshot(s));

  static AttendeesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AttendeesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AttendeesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AttendeesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AttendeesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AttendeesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAttendeesRecordData({
  String? name,
  String? email,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'email': email,
    }.withoutNulls,
  );

  return firestoreData;
}

class AttendeesRecordDocumentEquality implements Equality<AttendeesRecord> {
  const AttendeesRecordDocumentEquality();

  @override
  bool equals(AttendeesRecord? e1, AttendeesRecord? e2) {
    return e1?.name == e2?.name && e1?.email == e2?.email;
  }

  @override
  int hash(AttendeesRecord? e) =>
      const ListEquality().hash([e?.name, e?.email]);

  @override
  bool isValidKey(Object? o) => o is AttendeesRecord;
}
