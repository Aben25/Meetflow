import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeetingRecord extends FirestoreRecord {
  MeetingRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "admin" field.
  DocumentReference? _admin;
  DocumentReference? get admin => _admin;
  bool hasAdmin() => _admin != null;

  // "Joined" field.
  List<DocumentReference>? _joined;
  List<DocumentReference> get joined => _joined ?? const [];
  bool hasJoined() => _joined != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "raised" field.
  List<DocumentReference>? _raised;
  List<DocumentReference> get raised => _raised ?? const [];
  bool hasRaised() => _raised != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _admin = snapshotData['admin'] as DocumentReference?;
    _joined = getDataList(snapshotData['Joined']);
    _date = snapshotData['date'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _raised = getDataList(snapshotData['raised']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Meeting');

  static Stream<MeetingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MeetingRecord.fromSnapshot(s));

  static Future<MeetingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MeetingRecord.fromSnapshot(s));

  static MeetingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MeetingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MeetingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MeetingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MeetingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MeetingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMeetingRecordData({
  String? title,
  DocumentReference? admin,
  DateTime? date,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'admin': admin,
      'date': date,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class MeetingRecordDocumentEquality implements Equality<MeetingRecord> {
  const MeetingRecordDocumentEquality();

  @override
  bool equals(MeetingRecord? e1, MeetingRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.admin == e2?.admin &&
        listEquality.equals(e1?.joined, e2?.joined) &&
        e1?.date == e2?.date &&
        e1?.description == e2?.description &&
        listEquality.equals(e1?.raised, e2?.raised);
  }

  @override
  int hash(MeetingRecord? e) => const ListEquality().hash(
      [e?.title, e?.admin, e?.joined, e?.date, e?.description, e?.raised]);

  @override
  bool isValidKey(Object? o) => o is MeetingRecord;
}
