import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: const Color(0xff6158e6),
        padding: const EdgeInsets.all(18),
        child: Column(
          children: [
            InkWell(
              onTap: () {},
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5.0,
              ),
              child: Divider(
                color: Colors.blueGrey.shade400,
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                'Sign up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5.0,
              ),
              child: Divider(
                color: Colors.blueGrey.shade400,
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                'Read',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5.0,
              ),
              child: Divider(
                color: Colors.blueGrey.shade400,
              ),
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                'Contact us',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            const Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Copyright © 2023 | son_Kami',
                  style: TextStyle(color: Colors.blueGrey, fontSize: 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
