import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/configs/language_config/translator.dart';
import '../../constants/lang_const.dart' as lang;

@RoutePage()
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          Translator.of(context)!.translate(lang.welcomeText),
          style: TextStyle(
            fontSize: 30.0.sp,
          ),
        ),
      ),
    );
  }
}
