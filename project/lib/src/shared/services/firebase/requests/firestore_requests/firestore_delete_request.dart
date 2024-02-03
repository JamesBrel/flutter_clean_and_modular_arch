import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../constants/lang_const.dart' as lang;
import '../../configs/firebase_instance.dart';
import '../../utils/status_util.dart';

class FirestoreDeleteRequest {
  static Future<Map<String, dynamic>> deleteOne({
    required String collectionName,
    required Map<String, dynamic> data,
  }) async {
    return await firebaseFirestore
        .collection(collectionName)
        .doc(data["id"])
        .delete()
        .then<Map<String, dynamic>>(
          (value) => {
            "status": FirebaseStatus.ok,
          },
        )
        .catchError((err) => {
              "status": FirebaseStatus.internalServerError,
              "message": lang.serverErrorText,
            });
  }
}
