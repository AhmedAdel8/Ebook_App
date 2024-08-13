// ignore_for_file: camel_case_types

import 'package:ebook_app/Features/splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class splashView extends StatelessWidget {
  const splashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
