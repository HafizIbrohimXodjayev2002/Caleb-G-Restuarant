import 'package:calebresturant/models/buyurtmalarModels.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String? uid;
  DatabaseService({this.uid});

  final CollectionReference buyurtmalarCollection =
      FirebaseFirestore.instance.collection("Buyurtmalr");

  Future malumotID(id) {
    return buyurtmalarCollection.doc(id).delete();
  }

  Future malumotUpdate(String? ovqatIsm, String? ovqatNarx) async {
    return await buyurtmalarCollection.doc(uid).set(
      {
        'ovqatIsm': ovqatIsm,
        'ovqatNarx': ovqatNarx,
        'holat' : false,
      },
    );
  }

  List<Buyurtmalar> _snapShotDanKelgandata(QuerySnapshot snap) {
    return snap.docs.map((doc) {
      return Buyurtmalar(
        ism: doc['ovqatIsm'],
        narx: doc['ovqatNarx'],
        holat : doc['holat'],
      );
    }).toList();
  }

  Stream<List<Buyurtmalar>> get buyurtmalar1 {
    return buyurtmalarCollection.snapshots().map(_snapShotDanKelgandata);
  }
}
