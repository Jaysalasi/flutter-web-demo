import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  final String type;
  final String text;
  const InfoText({Key? key, required this.type, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          '$type: ',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        Flexible(
          child: Text(
            text,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}
