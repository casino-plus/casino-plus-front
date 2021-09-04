import 'hook_widget.dart';

class UserIcon extends HookWidget {
  final String iconURL;
  final double size;
  final double? cornerRadius;
  final Color? borderColor;
  final double? borderWidth;
  UserIcon(
    this.iconURL, {
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

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            cornerRadius != null ? cornerRadius! : size / 2.00),
        border: getBorder(),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
            cornerRadius != null ? cornerRadius! : size / 2.00),
        child: Container(
          width: size,
          height: size,
          child: Image.network(
            iconURL,
            errorBuilder: (context, exception, stackTrace) {
              return Image.asset(
                'assets/images/guest.png',
                fit: BoxFit.cover,
              );
            },
          ),
        ),
      ),
    );
  }
}
