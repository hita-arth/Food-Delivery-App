import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreService {
  //get collection of orders:
  final CollectionReference orders =
      FirebaseFirestore.instance.collection('orders');
    
  //save order to db:
  Future<void> saveOrderToDatabse(String reciept) async {
    await orders.add({
      'date': DateTime.now(),
      'order': reciept,
    },);
  }
}
