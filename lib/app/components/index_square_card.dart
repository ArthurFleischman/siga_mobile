import 'package:flutter/material.dart';

class IndexSquareCard extends StatelessWidget {
  final void Function() onTap;
  final double? iconSize;
  final IconData icon;
  final String text;
  final double? fontSize;
  final Color? textColor;
  const IndexSquareCard({
    Key? key,
    required this.onTap,
    this.iconSize,
    required this.icon,
    required this.text,
    this.fontSize,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      color: Color.fromRGBO(255, 255, 255, .9),
      elevation: 10,
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          height: 100,
          width: 100,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: Color.fromRGBO(33, 54, 112, 1),
                size: iconSize != null ? iconSize : 40,
              ),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: fontSize != null ? fontSize : 18,
                  color: textColor != null
                      ? textColor
                      : Color.fromRGBO(33, 54, 112, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
