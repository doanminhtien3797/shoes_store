import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryServices{
  Firestore _fireStore = Firestore.instance;
  String ref = "CategoriesShoes";

  Future<List<DocumentSnapshot>> getCategories() =>
      _fireStore.collection(ref).getDocuments().then((snaps) {
        return snaps.documents;
      });

}