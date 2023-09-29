import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'config/build_material_color.dart';
import 'resources/app_resources.dart';
import 'resources/app_text_theme.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        textTheme: AppTextTheme.blackMountainView,
        primarySwatch: buildMaterialColor(AppColors.primary),
      ),
    ),
  );
}
