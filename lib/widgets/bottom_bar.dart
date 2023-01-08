import 'package:book_me/widgets/bottom_bar_column.dart';
import 'package:book_me/widgets/info_text.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff11998e);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(
            1,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: gradientStartColor,
            offset: Offset(
              1.0,
              6.0,
            ),
            blurRadius: 1.0,
          ),
          BoxShadow(
            color: gradientEndColor,
            offset: Offset(
              1.0,
              6.0,
            ),
            blurRadius: 1.0,
          ),
        ],
        gradient: LinearGradient(
          colors: [
            gradientStartColor,
            gradientEndColor,
          ],
          begin: FractionalOffset(
            0.2,
            0.2,
          ),
          end: FractionalOffset(
            1.0,
            1.0,
          ),
          stops: [
            0.0,
            1.0,
          ],
          tileMode: TileMode.clamp,
        ),
      ),
      padding: const EdgeInsets.all(
        30,
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const BottomBarColumn(
                heading: 'Home',
                s1: 'Contact Us',
                s2: 'About Us',
                s3: 'Careers',
              ),
              Container(
                color: Colors.white,
                width: 2,
                height: 150,
              ),
              // Column(
              //   children: [Row()],
              // )
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  InfoText(
                    type: 'Email',
                    text: 'text@me.com',
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  InfoText(
                    type: 'Address',
                    text: '123 abd road x, High way, Block Area 51',
                  ),
                ],
              ),
            ],
          ),
          const Divider(
            color: Colors.white,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'CopyRight © 2023 | son_Kami',
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
