import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../../constants/lang_const.dart' as lang;
import '../../configs/firebase_instance.dart';
import '../../utils/status_util.dart';

class FirestoreUpdateRequest {
  static Future<Map<String, dynamic>> updateOne({
    required String collectionName,
    required Map<String, dynamic> data,
  }) async {
    return await firebaseFirestore
        .collection(collectionName)
        .doc(data["id"])
        .update(data["map"])
        .then<Map<String, dynamic>>(
          (_snapShotData) => {
            "status": FirebaseStatus.ok,
          },
        )
        .catchError((err) => {
              "status": FirebaseStatus.internalServerError,
              "message": lang.serverErrorText,
            });
  }
}
