import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:inspectorx_beta/components/points.dart';

const String COLLECTION_REF = "Users";

class DatabaseService {
  final _firestore = FirebaseFirestore.instance;
  late final CollectionReference _collref;

  DatabaseService() {
    _collref = _firestore.collection(COLLECTION_REF).withConverter<pointSystem>(
        fromFirestore: ((snapshots, _) => pointSystem.fromJson(
              snapshots.data()!,
            )),
        toFirestore: (pointas, _) => pointas.toJson());
  }

  Stream<QuerySnapshot> getdata() {
    return _collref.snapshots();
  }

  void addData(pointSystem pointas) async {
    _collref.add(pointas);
  }
}
