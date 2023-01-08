import 'package:flutter/cupertino.dart';

class FeaturedHeading extends StatelessWidget {
  final Size screenSize;
  const FeaturedHeading({
    super.key,
    required this.screenSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height * 0.06,
        left: screenSize.width / 15,
        right: screenSize.width / 15,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text(
            'Featured',
            style: TextStyle(
              fontSize: 36,
              fontFamily: 'Raleway',
              fontWeight: FontWeight.bold,
              color: Color(0xff263b5e),
            ),
          ),
          Expanded(
            child: Text(
              'Clue of the wooden cottage',
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }
}
