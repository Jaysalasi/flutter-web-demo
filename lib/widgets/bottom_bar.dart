import 'package:book_me/widgets/bottom_bar_column.dart';
import 'package:book_me/widgets/info_text.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  static const Color gradientStartColor = Color(0xff11998e);
  static const Color gradientEndColor = Color(0xff0575e6);

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
      child: MediaQuery.of(context).size.width < 800
          ? Column(
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        BottomBarColumn(
                          heading: 'About',
                          s1: 'Contact Us',
                          s2: 'About Us',
                          s3: 'Careers',
                        ),
                        BottomBarColumn(
                          heading: 'Help',
                          s1: 'F.A.Q',
                          s2: 'Terms',
                          s3: 'Policy',
                        ),
                        BottomBarColumn(
                          heading: 'Social',
                          s1: 'Facebook',
                          s2: 'Twitter',
                          s3: 'Insta',
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height / 2,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
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
            )
          : Column(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const BottomBarColumn(
                      heading: 'About',
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
                    SizedBox(
                      width: MediaQuery.of(context).size.height / 2,
                      child: Column(
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
