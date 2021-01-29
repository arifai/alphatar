import 'package:alphatar/src/string_extension.dart';
import 'package:flutter/material.dart';

/// Create an avatar with the initials.
class Alphatar extends StatelessWidget {
  /// Take initials. Ex: John Doe becomes JD. The maximum can be taken is 2 latters.
  final String initials;

  /// Avatar `onTap`
  final VoidCallback onTap;

  /// Text color. If the `backgroundColor` you provide is a dark color, then the `textColor` will be white.
  final Color textColor;

  /// The background color of your avatar
  final Color backgroundColor;

  /// Border
  final BoxBorder border;

  /// Avatar size
  final double size;

  /// Border radius
  final BorderRadiusGeometry borderRadius;

  const Alphatar({
    Key key,
    this.initials,
    this.onTap,
    this.textColor,
    this.backgroundColor = Colors.blueGrey,
    this.border,
    this.size = 50,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var name = initials.getInitials();

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: borderRadius ?? BorderRadius.circular(200.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: Center(
          child: Text(
            name,
            style: TextStyle(
              color: textColor ??
                  (HSLColor.fromColor(backgroundColor).lightness < 0.8
                      ? Colors.white
                      : Colors.black),
              fontSize: size / (name.length == 2 ? 2.5 : 2.1),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
