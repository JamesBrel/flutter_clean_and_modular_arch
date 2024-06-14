import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import '../../../shared/constants/double_const.dart';
import '../../../shared/constants/envs_const.dart';
import '../../../shared/constants/string_const.dart';

class WindowConfig {
  static void windows() {
    WindowManager.instance.setTitle("$app ${EnvPath.env}");
    WindowManager.instance.setSize(const Size(windowWidth, windowHeight));
    WindowManager.instance.setResizable(false);
    WindowManager.instance.center(animate: true);
  }
}
