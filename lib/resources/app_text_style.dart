import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyle {
  static const double fontSizeH1 = 45;
  static const double fontSizeH2 = 30;
  static const double fontSizeH3 = 38;
  static const double fontSizeH4 = 16;
  static const double fontSizeH5 = 14;
  static const double fontSizeH6 = 11;
  static const double fontSizeNormal = 12;

  static const double fontSizeDescription = 11.5;
  static const double fontSizeCaption = 11;
  static const double fontSizeCaptionFooter = 11;

  static const TextStyle descriptionListTile = TextStyle(
    fontSize: fontSizeDescription,
    overflow: TextOverflow.ellipsis,
  );

  static const TextStyle captionListTile = TextStyle(
    fontSize: fontSizeCaption,
    overflow: TextOverflow.ellipsis,
    color: AppColors.textCaption,
    fontStyle: FontStyle.italic,
  );
}
