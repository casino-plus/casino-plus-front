import 'package:casino_plus/components/assets_image.dart';
import 'package:casino_plus/components/url_image.dart';
import 'package:casino_plus/config/image_names.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class UserIcon extends HookConsumerWidget {
  final String iconUrl;
  final double size;
  final double? cornerRadius;
  final Color? borderColor;
  final double? borderWidth;
  const UserIcon(
    this.iconUrl, {
    this.size = 120,
    this.cornerRadius,
    this.borderColor,
    this.borderWidth,
  });

  Border? getBorder() {
    if (borderColor != null || borderWidth != null) {
      final color = borderColor != null ? borderColor! : Colors.blue;
      final width = borderWidth != null ? borderWidth! : 2.0;
      return Border.all(color: color, width: width);
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            cornerRadius != null ? cornerRadius! : size / 2.00),
        border: getBorder(),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
            cornerRadius != null ? cornerRadius! : size / 2.00),
        child: SizedBox(
          width: size,
          height: size,
          child: UrlImage(iconUrl),
        ),
      ),
    );
  }
}
