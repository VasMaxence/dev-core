import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dev_core/domain/repository/interface/user.interface.dart';

final class FirebaseUserRepository extends UserInterface<CollectionReference, dynamic> {
  @override
  Future<CollectionReference> getDatabase() async {
    return FirebaseFirestore.instance.collection("users");
  }
}