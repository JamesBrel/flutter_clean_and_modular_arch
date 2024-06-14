// todo : Remove the comment marks once to enable this file 

// import 'dart:io';

// import 'package:flutter/material.dart';
// import 'package:image_cropper/image_cropper.dart';

// import '../../../../core/configs/language_config/translator.dart';
// import '../../../constants/colors_const.dart';
// import '../../../constants/lang_const.dart';
// import '../configs/image_instance.dart';
// import '../messages/note_message.dart';

// class ImageCropperRequest {
//   static Future<Map<String, dynamic>> cropImage({
//     required BuildContext context,
//     required String mediaImagePath,
//   }) async {
//     return await imageCropper
//         .cropImage(
//             sourcePath: mediaImagePath,
//             compressFormat: ImageCompressFormat.png,
//             compressQuality: 80,
//             aspectRatioPresets: Platform.isAndroid
//                 ? [
//                     CropAspectRatioPreset.square,
//                     CropAspectRatioPreset.ratio3x2,
//                     CropAspectRatioPreset.original,
//                     CropAspectRatioPreset.ratio4x3,
//                     CropAspectRatioPreset.ratio16x9
//                   ]
//                 : [
//                     CropAspectRatioPreset.original,
//                     CropAspectRatioPreset.square,
//                     CropAspectRatioPreset.ratio3x2,
//                     CropAspectRatioPreset.ratio4x3,
//                     CropAspectRatioPreset.ratio5x3,
//                     CropAspectRatioPreset.ratio5x4,
//                     CropAspectRatioPreset.ratio7x5,
//                     CropAspectRatioPreset.ratio16x9
//                   ],
//             uiSettings: [
//               AndroidUiSettings(
//                 toolbarTitle: Translator.of(context)!
//                     .translate(NoteMessage.cropImage),
//                 toolbarColor: ColorResources.red,
//                 initAspectRatio: CropAspectRatioPreset.original,
//                 toolbarWidgetColor: ColorResources.whiteColor,
//                 lockAspectRatio: false,
//               ),
//               IOSUiSettings(
//                 title: Translator.of(context)!
//                     .translate(NoteMessage.cropImage),
//                 doneButtonTitle: "Done",
//                 cancelButtonTitle: "Cancel",
//               ),
//             ])
//         .then(
//           (imageCropped) => {
//             "status": true,
//             "data": imageCropped!.path,
//           },
//         )
//         .catchError((err) => {
//               "status": false,
//               "message": Lang.deviceError,
//             });
//   }
// }
