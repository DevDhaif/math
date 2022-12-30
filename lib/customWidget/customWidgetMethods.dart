import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../AboutPage.dart';
import '../HomeScreen.dart';
import '../utils/colorConst.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: AppBar(
        
        leading: Align(
          alignment: Alignment.topRight,
          child: IconButton(
            icon: const Icon(
              Icons.calculate_outlined,
              size: 50,
              color: Colors.white,
            ),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onPressed: () {
              if (kIsWeb)
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                  (route) => false,
                );
            },
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.info_outline,
                    color: Colors.white, size: 30),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
        title: const Align(
          alignment: Alignment.topRight,
          child: Text(
            'الحساب ',
            style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w500,
                letterSpacing: 2),
          ),
        ),
        backgroundColor: baseColor,
        elevation: 0,
      ),
    );
  }
}
