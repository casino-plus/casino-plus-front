import 'hook_widget.dart';

class SafeURLImage extends HookWidget {
  final String url;
  SafeURLImage(this.url);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 120,
      child: Image.network(
        url,
        errorBuilder: (context, exception, stackTrace) {
          return Image.asset(
            'assets/images/no-image.png',
            fit: BoxFit.cover,
          );
        },
      ),
    );
  }
}
