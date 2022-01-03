import 'package:cloud_firestore/cloud_firestore.dart';

class SlidersServices{
  Firestore _fireStore = Firestore.instance;
  String ref = "slidersShoes";

  Future<List<DocumentSnapshot>> getSliders() =>
      _fireStore.collection(ref).getDocuments().then((snaps) {
        return snaps.documents;
      });

}