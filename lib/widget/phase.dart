import 'package:flutter/material.dart';
import 'dart:math';
class MoonPhase extends CustomPainter{
  final double phase;
  MoonPhase({ this.phase });
  @override
  void paint(Canvas canvas, Size size) {
    Color shadowColor = Colors.black54;
    MaskFilter _filter = MaskFilter.blur(BlurStyle.normal, 6);

    if (phase <= 0.25) {
      // left
      canvas.drawArc(
        Rect.fromLTWH(0, 0, size.width, size.height),
        -pi / 2,
        -pi,
        false,
        Paint()
        ..isAntiAlias = true
        ..style = PaintingStyle.fill
        ..color = shadowColor
        ..maskFilter = _filter
      );
      double _shadowWidth = size.width - phase / 0.25 * size.width;
      // right
      canvas.drawArc(
        Rect.fromLTWH((size.width - _shadowWidth)/ 2, 0, _shadowWidth, size.height),
        -pi / 2,
        pi,
        false,
        Paint()
        ..isAntiAlias = true
        ..style = PaintingStyle.fill
        ..color = shadowColor
        ..maskFilter = _filter
      );
    } else if (phase <= 0.5) {
      double _shadowWidth = (phase - 0.25) / 0.25 * size.width;
      Path outer = Path()
                  ..moveTo(size.width / 2, 0)
                  ..arcTo(Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: size.width / 2), -pi / 2, -pi, true);
      Path inner = Path()
                  ..moveTo(size.width / 2, 0)
                  ..arcTo(Rect.fromLTWH((size.width - _shadowWidth)/ 2, 0, _shadowWidth, size.height), -pi / 2, -pi, true);
                  // ..cubicTo(size.width - _shadowWidth * 2, size.height / 4 * 3, size.width - _shadowWidth * 2, size.height / 4, size.width / 2, 0);

      canvas.drawPath(Path.combine(PathOperation.difference, outer, inner),
        Paint()
        ..isAntiAlias = true
        ..style = PaintingStyle.fill
        ..color = shadowColor
        ..maskFilter = _filter);
    } else if (phase <= 0.75) {
      double _shadowWidth = (0.75 - phase)/ 0.25 * size.width;
      Path outer = Path()
                  ..moveTo(size.width / 2, 0)
                  ..arcTo(Rect.fromCircle(center: Offset(size.width / 2, size.height / 2), radius: size.width / 2), -pi / 2, pi, true);
      Path inner = Path()
                  ..moveTo(size.width / 2, 0)
                  ..arcTo(Rect.fromLTWH((size.width - _shadowWidth)/ 2, 0, _shadowWidth, size.height), -pi / 2, pi, true);
                  // ..cubicTo(size.width - _shadowWidth * 2, size.height / 4 * 3, size.width - _shadowWidth * 2, size.height / 4, size.width / 2, 0);

      canvas.drawPath(Path.combine(PathOperation.difference, outer, inner),
        Paint()
        ..isAntiAlias = true
        ..style = PaintingStyle.fill
        ..color = shadowColor
        ..maskFilter = _filter);
    } else {
      canvas.drawArc(
        Rect.fromLTWH(0, 0, size.width, size.height),
        -pi / 2,
        pi,
        false,
        Paint()
        ..isAntiAlias = true
        ..style = PaintingStyle.fill
        ..color = shadowColor
        ..maskFilter = _filter
      );
      double _shadowWidth = (phase - 0.75) / 0.25 * size.width;
      canvas.drawArc(
        Rect.fromLTWH((size.width - _shadowWidth) / 2, 0, _shadowWidth, size.height),
        -pi / 2,
        -pi,
        false,
        Paint()
        ..isAntiAlias = true
        ..style = PaintingStyle.fill
        ..color = shadowColor
        ..maskFilter = _filter
      );
    }
    
    
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}